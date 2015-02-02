cm11-p6
=======

Build CM11 for Huawei Ascend P6 :

$ make clobber

$ make clean 

$ ./vendor/cm/get-prebuilts

$ . build/envsetup.sh

$ lunch 

$ choose your appropriate number ...

$ brunch hwp6_u06


Warning : By building custom VIVANTE libraries , your final package will not boot in your device, because at this time some source code from gpu_vivante must be updated or is not completed 100% !



