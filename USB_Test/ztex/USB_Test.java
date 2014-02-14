import java.io.*;
import java.text.DecimalFormat;
import java.util.*;
import ch.ntb.usb.*;
import ztex.*;

// *****************************************************************************
// ******* ParameterException **************************************************
// *****************************************************************************
// Exception the prints a help message
class ParameterException extends Exception
{
	public final static String helpMsg = new String(
			"Usage: java [-d] [-f] [-h] -e <essid> -t <target_key> -i|-w <wordlist>\n"
					+ "Parameters:\n" + " -d <number>          Device Number (default: 0)\n"
					+ " -f                   Force uploads\n"
					+ " -p                   Print bus info\n"
					+ " -h                   This help\n"
					+ " -i                   Use STDIN for passwords\n"
					+ " -e <essid>           Set ESSID\n"
					+ " -w <wordlist>        Use wordlist for passwords\n"
					+ " -t <target_key>      Set 64 byte target key in hex format");

	public ParameterException(String msg)
	{
		super(msg + "\n\n" + helpMsg);
	}
}

// *****************************************************************************
// ******* Test0 ***************************************************************
// *****************************************************************************
class USB_Test extends Ztex1v1
{
	// ******* USB_Test
	// **************************************************************
	// constructor
	public USB_Test(ZtexDevice1 pDev) throws UsbException
	{
		super(pDev);
	}

	public static String bytesToHex(byte[] bytes, boolean spaced)
	{
		final char[] hexArray =
		{ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		char[] hexChars;
		if (spaced)
			hexChars = new char[bytes.length * 3 - 1];
		else
			hexChars = new char[bytes.length * 2];
		int v;
		for (int j = 0; j < bytes.length; j++)
		{
			v = bytes[j] & 0xFF;
			if (spaced)
			{

				hexChars[j * 3] = hexArray[v >>> 4];
				hexChars[j * 3 + 1] = hexArray[v & 0x0F];
				if (j < bytes.length - 1)
					hexChars[j * 3 + 2] = ' ';
			}
			else
			{
				hexChars[j * 2] = hexArray[v >>> 4];
				hexChars[j * 2 + 1] = hexArray[v & 0x0F];
			}
		}
		return new String(hexChars);
	}

	public static String bytesToHex(byte[] bytes)
	{
		return bytesToHex(bytes, true);
	}

	public static String bytesToDec(byte[] bytes)
	{
		StringBuilder strb = new StringBuilder();
		for (int i = 0; i < bytes.length; i++)
		{
			strb.append(bytes[i] & 0xFF);
			if (i < bytes.length - 1)
				strb.append(' ');
		}
		return strb.toString();
	}

	public enum Status
	{
		NONE(0), FINISHED(1), READY(2), GOT_ESSID(4), GOT_TARGET_KEY(8);

		private int id;

		Status(int Id)
		{
			this.id = Id;
		}
	}

	private byte getStatus() throws UsbException
	{
		final byte buf[] = new byte[1];
		this.vendorRequest2(0x03, "Get Status", 0, 0, buf, 1);
		return buf[0];
	}

	// ******* main
	// ****************************************************************
	public static void main(String args[])
	{
		int devNum = 0;
		boolean force = false;
		boolean useStdin = false;
		String essid = null;
		File wordlist = null;
		byte targetKey[] = null;

		try
		{
			// init USB stuff
			LibusbJava.usb_init();

			// scan the USB bus
			ZtexScanBus1 bus = new ZtexScanBus1(ZtexDevice1.ztexVendorId,
					ZtexDevice1.ztexProductId, true, false, 1);
			if (bus.numberOfDevices() <= 0)
			{
				System.err.println("No devices found");
				System.exit(0);
			}

			// scan the command line arguments
			for (int i = 0; i < args.length; i++)
			{
				if (args[i].equals("-d"))
				{
					i++;
					try
					{
						if (i >= args.length)
							throw new Exception();
						devNum = Integer.parseInt(args[i]);
					}
					catch (Exception e)
					{
						throw new ParameterException("Device number expected after -d");
					}
				}
				else if (args[i].equals("-f"))
				{
					force = true;
				}
				else if (args[i].equals("-p"))
				{
					bus.printBus(System.out);
					System.exit(0);
				}
				else if (args[i].equals("-p"))
				{
					bus.printBus(System.out);
					System.exit(0);
				}
				else if (args[i].equals("-i"))
				{
					useStdin = true;
				}
				else if (args[i].equals("-h"))
				{
					System.err.println(ParameterException.helpMsg);
					System.exit(0);
				}
				else if (args[i].equals("-e"))
				{
					i++;
					if (i >= args.length)
						throw new ParameterException("Essid expected after -e");

					essid = args[i];
					if (essid.length() > 32)
						throw new ParameterException(
								"ESSID must not be longer than 32 characters: " + args[i]);
				}
				else if (args[i].equals("-t"))
				{
					i++;
					if (i >= args.length)
						throw new ParameterException("Essid target key after -t");

					try
					{
						if (args[i].length() != 64)
							throw new Exception();

						targetKey = new byte[32];

						for (int j = 0; j < 32; j++)
						{
							targetKey[j] = (byte) (Integer.parseInt(
									args[i].substring(j * 2, j * 2 + 2), 16) & 0xFF);
						}
					}
					catch (Exception ex)
					{
						System.out.println(ex.getLocalizedMessage());
						throw new ParameterException("Not a valid target key after -t");
					}
				}
				else if (args[i].equals("-w"))
				{
					i++;
					if (i >= args.length)
						throw new ParameterException("Wordlist expected after -w");

					wordlist = new File(args[i]);
					if (!wordlist.exists() || !wordlist.canRead())
						throw new ParameterException("No readable wordlist: " + args[i]);
				}
				else
					throw new ParameterException("Invalid Parameter: " + args[i]);
			}

			if (!useStdin && wordlist == null)
				throw new ParameterException("Neither -i nor -w given");

			if (essid == null)
				throw new ParameterException("No ESSID given");

			if (targetKey == null)
				throw new ParameterException("No target Key given");

			// create the main class
			USB_Test cracker = new USB_Test(bus.device(devNum));

			// upload the firmware if necessary
			if (force || !cracker.valid()
					|| !cracker.dev().productString().equals("USB_Test UFM 1.11"))
			{
				System.out.println("Firmware upload time: "
						+ cracker.uploadFirmware("usb-test.ihx", force) + " ms");
				force = true;
			}

			// upload the bitstream if necessary
			if (force || !cracker.getFpgaConfiguration())
			{
				System.out.println("FPGA configuration time: "
						+ cracker.configureFpga("../usb_test.bit", force) + " ms");
			}

			// claim interface 0
			cracker.trySetConfiguration(1);
			cracker.claimInterface(0);

			byte outBuf[];
			byte inBuf[] = new byte[65];
			String pwd;
			int pwdLen;
			BufferedReader reader;

			if (useStdin)
				reader = new BufferedReader(new InputStreamReader(System.in));
			else
				reader = new BufferedReader(new FileReader(wordlist));

			try
			{
				int essidLen = essid.length();
				cracker.vendorCommand2(0x02, "Send ESSID", essidLen, 0, essid.getBytes("ASCII"),
						essidLen);
				if ((cracker.getStatus() & Status.GOT_ESSID.id) == 0)
					throw new UsbException("Could not send ESSID");
			}
			catch (UsbException ex)
			{
				throw new UsbException("Could not send ESSID: " + ex.getLocalizedMessage());
			}

			try
			{
				cracker.vendorCommand2(0x04, "Send target key", 32, 0, targetKey, 32);
				if ((cracker.getStatus() & Status.GOT_TARGET_KEY.id) == 0)
					throw new UsbException("Could not send target key");
			}
			catch (UsbException ex)
			{
				throw new UsbException("Could not send target key: " + ex.getLocalizedMessage());
			}

			long startTime = new Date().getTime();
			int pwdCnt = 0;

			try
			{
				while (reader.ready())
				{
					pwd = reader.readLine();
					pwdLen = pwd.length();

					// if (pwdLen < 8 || pwdLen > 63)
					// {
					// continue;
					// }

					outBuf = pwd.getBytes("ASCII");

					// while ((cracker.getStatus() & Status.READY.id) == 0)
					// ; // wait till ready, now done by the firmware

					if ((cracker.getStatus() & Status.FINISHED.id) != 0)
						break;

					cracker.vendorCommand(0x00, "Send Pwd", pwdLen, 0, outBuf, pwdLen);
					pwdCnt++;

					// System.out.println("Sent password: " + pwd);

					// if (cracker.debugNewMessages != 0)
					// {
					// byte[] msgBuf = new byte[30];
					// int j = cracker.debugReadMessages(false, msgBuf);
					// System.out.print(cracker.debugNewMessages +
					// " new messages: ");
					// for (int k = 0; k < j; k++)
					// {
					// if (k > 0)
					// System.out.print("                ");
					// System.out.println(bytesToDec(Arrays.copyOfRange(msgBuf,
					// k * 3,
					// k * 3 + 3)));
					// }
					// }
				}
			}
			catch (IOException ex)
			{
				throw ex;
			}
			finally
			{
				reader.close();
			}

			Thread.sleep(10);
			if ((cracker.getStatus() & Status.FINISHED.id) != 0)
			{
				try
				{
					pwdLen = cracker.vendorRequest(0x01, "Receive Pwd", inBuf, 64);
					pwd = new String(Arrays.copyOf(inBuf, pwdLen + 1), "ASCII");
					System.out.println("Match found (length = " + pwdLen + "): " + pwd);
				}
				catch (UsbException ex)
				{
					System.out.println("Error receiving password: " + ex.getLocalizedMessage());
				}
			}
			else
			{
				System.out.println("No match found");
			}

			double timePassed = (new Date().getTime() - startTime) / 1000.0;

			DecimalFormat f = new DecimalFormat("#0.00");

			System.out.println("Time passed: " + timePassed + "s");
			System.out.println("Performance: " + f.format(pwdCnt / timePassed)
					+ " hashes per second");

			// release interface 0
			cracker.releaseInterface(0);

		}
		catch (Exception e)
		{
			System.out.println("Error: " + e.getLocalizedMessage());
		}
	}
}
