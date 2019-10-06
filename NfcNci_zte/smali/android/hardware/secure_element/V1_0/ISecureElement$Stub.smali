.class public abstract Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;
.super Landroid/os/HwBinder;
.source "ISecureElement.java"

# interfaces
.implements Landroid/hardware/secure_element/V1_0/ISecureElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/secure_element/V1_0/ISecureElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 516
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 558
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 559
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 560
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 561
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 562
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x43t
        0x76t
        -0x67t
        -0x10t
        0x7bt
        -0x5bt
        0x39t
        0x23t
        0x10t
        -0x2t
        -0x3t
        0x33t
        -0x16t
        -0x6at
        0x4et
        0x1t
        -0xct
        -0xct
        -0x5at
        0x60t
        0x15t
        0x14t
        0x68t
        0x45t
        -0x38t
        0x50t
        0x55t
        0x0t
        0x48t
        0x23t
        -0x34t
        -0x7ft
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.secure_element@1.0::ISecureElement"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 528
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 567
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 568
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    .line 871
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 872
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_21

    .line 873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_c

    .line 858
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 859
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 860
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 862
    goto/16 :goto_c

    .line 863
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->notifySyspropsChanged()V

    .line 866
    goto/16 :goto_c

    .line 842
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 843
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 844
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 846
    goto/16 :goto_c

    .line 847
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 850
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 851
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_c

    .line 827
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 828
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto/16 :goto_c

    .line 832
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->ping()V

    .line 835
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_c

    .line 817
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 818
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_21

    .line 819
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto/16 :goto_c

    .line 804
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 805
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 806
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_c

    .line 809
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->setHALInstrumentation()V

    .line 812
    goto/16 :goto_c

    .line 771
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 772
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 773
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 775
    goto/16 :goto_c

    .line 776
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 779
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 783
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 784
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 785
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 786
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 787
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 789
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 790
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 791
    nop

    .line 787
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 794
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 796
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 798
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_c

    .line 755
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 756
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 757
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 759
    goto/16 :goto_c

    .line 760
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 766
    goto/16 :goto_c

    .line 741
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 742
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 743
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_c

    .line 746
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 750
    goto/16 :goto_c

    .line 725
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 726
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 727
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_c

    .line 730
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 733
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 736
    goto/16 :goto_c

    .line 708
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 709
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 710
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 712
    goto/16 :goto_c

    .line 713
    :cond_14
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 716
    .local v0, "channelNumber":B
    invoke-virtual {p0, v0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->closeChannel(B)B

    move-result v3

    .line 717
    .local v3, "_hidl_out_status":B
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 719
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 720
    goto/16 :goto_c

    .line 686
    .end local v0    # "channelNumber":B
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_status":B
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 687
    .local v1, "_hidl_is_oneway":Z
    :cond_15
    if-eqz v1, :cond_16

    .line 688
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_c

    .line 691
    :cond_16
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 694
    .local v0, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 695
    .local v2, "p2":B
    new-instance v3, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;

    invoke-direct {v3, p0, p3}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$2;-><init>(Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->openBasicChannel(Ljava/util/ArrayList;BLandroid/hardware/secure_element/V1_0/ISecureElement$openBasicChannelCallback;)V

    .line 703
    goto/16 :goto_c

    .line 664
    .end local v0    # "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "p2":B
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 665
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eqz v1, :cond_18

    .line 666
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_c

    .line 669
    :cond_18
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 672
    .restart local v0    # "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v2

    .line 673
    .restart local v2    # "p2":B
    new-instance v3, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;

    invoke-direct {v3, p0, p3}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub$1;-><init>(Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->openLogicalChannel(Ljava/util/ArrayList;BLandroid/hardware/secure_element/V1_0/ISecureElement$openLogicalChannelCallback;)V

    .line 681
    goto/16 :goto_c

    .line 647
    .end local v0    # "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "p2":B
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_8

    :cond_19
    move v2, v1

    .line 648
    .local v2, "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_1a

    .line 649
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 651
    goto/16 :goto_c

    .line 652
    :cond_1a
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 655
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->transmit(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 656
    .local v3, "_hidl_out_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 657
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 659
    goto/16 :goto_c

    .line 631
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_9

    :cond_1b
    move v2, v1

    .line 632
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_1c

    .line 633
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 635
    goto :goto_c

    .line 636
    :cond_1c
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->isCardPresent()Z

    move-result v0

    .line 639
    .local v0, "_hidl_out_present":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 640
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 642
    goto :goto_c

    .line 615
    .end local v0    # "_hidl_out_present":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_a

    :cond_1d
    move v2, v1

    .line 616
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1e

    .line 617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 619
    goto :goto_c

    .line 620
    :cond_1e
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->getAtr()Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    .local v0, "_hidl_out_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 626
    goto :goto_c

    .line 599
    .end local v0    # "_hidl_out_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_b

    :cond_1f
    move v2, v1

    .line 600
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_20

    .line 601
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 603
    goto :goto_c

    .line 604
    :cond_20
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/secure_element/V1_0/ISecureElementHalCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/secure_element/V1_0/ISecureElementHalCallback;

    move-result-object v0

    .line 607
    .local v0, "clientCallback":Landroid/hardware/secure_element/V1_0/ISecureElementHalCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->init(Landroid/hardware/secure_element/V1_0/ISecureElementHalCallback;)V

    .line 608
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 610
    nop

    .line 880
    .end local v0    # "clientCallback":Landroid/hardware/secure_element/V1_0/ISecureElementHalCallback;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_21
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 552
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 578
    const-string v0, "android.hardware.secure_element@1.0::ISecureElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    return-object p0

    .line 581
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-virtual {p0, p1}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->registerService(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 543
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/secure_element/V1_0/ISecureElement$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 572
    const/4 v0, 0x1

    return v0
.end method
