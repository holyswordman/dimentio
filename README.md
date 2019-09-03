# dimentio
PoC tool for setting nonce without triggering KPP/KTRR/PAC. (requires tfp0)

1. Make sure your device is running iOS 12.4 on A12(X) and your computer is running macOS with Xcode and have valid developer certificate installed.

2. Jailbreak your device using unc0ver 3.5.6 with SSH enabled.

3. On your computer, run "security find-identity -v -p codesigning" to list codesign identity and select one from first column, which should be a long hex string.

4. Run "security unlock-keychain login.keychain" to unlock your keychain.

5. build it with "CODESIGN_IDENTITY=XXX make" (XXX is your codesign identity).

6. Use scp to transfer the built binary to your device. Destination directory can be /var/root.

7. SSH into your device and enter the destination directory from last step.

8. Run "./dimentio <nonce>" (for example "./dimentio 0x1111111111111111") to set the generator.
