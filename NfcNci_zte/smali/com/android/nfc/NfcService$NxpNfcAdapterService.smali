.class final Lcom/android/nfc/NfcService$NxpNfcAdapterService;
.super Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2629
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private WaitForAdapterChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 2868
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v0, p1, :cond_0

    .line 2869
    nop

    .line 2877
    return-void

    .line 2872
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2875
    :goto_1
    goto :goto_0

    .line 2873
    :catch_0
    move-exception v0

    .line 2874
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public DefaultRouteSet(IZZZ)V
    .locals 6
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mChipVer:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2703
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2705
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_b

    .line 2706
    const/4 v0, 0x0

    .line 2707
    .local v0, "protoRouteEntry":I
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v1, :cond_2

    const/16 v2, 0x300

    goto :goto_1

    .line 2708
    :cond_2
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v3, :cond_3

    const/16 v2, 0x200

    goto :goto_1

    .line 2709
    :cond_3
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v4, :cond_4

    const/16 v2, 0x100

    goto :goto_1

    .line 2710
    :cond_4
    move v2, v5

    :goto_1
    move v0, v2

    .line 2711
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v4

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    or-int/2addr v2, v3

    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2713
    if-nez p1, :cond_8

    .line 2720
    and-int/lit16 v0, v0, 0xe9

    .line 2722
    :cond_8
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultRouteSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v1

    if-eq v1, p1, :cond_a

    .line 2725
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$3902(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 2726
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2727
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2728
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 2729
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_9

    .line 2730
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 2731
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 2733
    :cond_9
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 2735
    .end local v0    # "protoRouteEntry":I
    :cond_a
    goto :goto_5

    .line 2737
    :cond_b
    const-string v0, "NfcService"

    const-string v1, "DefaultRoute can not be set. mIsHceCapable = flase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :goto_5
    return-void
.end method

.method public MifareCLTRouteSet(IZZZ)V
    .locals 6
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mChipVer:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2746
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2749
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2750
    .local v0, "techRouteEntry":I
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v1, :cond_2

    const/16 v2, 0x300

    goto :goto_1

    .line 2751
    :cond_2
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v4, :cond_3

    const/16 v2, 0x200

    goto :goto_1

    .line 2752
    :cond_3
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v3, :cond_4

    const/16 v2, 0x100

    goto :goto_1

    .line 2753
    :cond_4
    move v2, v5

    :goto_1
    move v0, v2

    .line 2754
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTPowerState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    or-int/2addr v2, v4

    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2755
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4100(Lcom/android/nfc/NfcService;)I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    .line 2757
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MifareCLTRouteSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$3902(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 2759
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2760
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2761
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 2762
    return-void
.end method

.method public MifareDesfireRouteSet(IZZZ)V
    .locals 6
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mChipVer:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2670
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2672
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2674
    .local v0, "protoRouteEntry":I
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v1, :cond_2

    const/16 v2, 0x300

    goto :goto_1

    .line 2675
    :cond_2
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v4, :cond_3

    const/16 v2, 0x200

    goto :goto_1

    .line 2676
    :cond_3
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v3, :cond_4

    const/16 v2, 0x100

    goto :goto_1

    .line 2677
    :cond_4
    move v2, v5

    :goto_1
    move v0, v2

    .line 2678
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultDesfirePowerState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    or-int/2addr v2, v4

    if-eqz p4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2680
    if-nez p1, :cond_8

    .line 2687
    and-int/lit16 v0, v0, 0xe9

    .line 2690
    :cond_8
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MifareDesfireRouteSet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$3902(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 2692
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2693
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2694
    const-string v1, "NfcService"

    const-string v2, "MifareDesfireRouteSet function in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 2696
    return-void
.end method

.method public deliverSeIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2957
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliverSeIntent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x35

    invoke-virtual {v0, v1, p2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2960
    return-void
.end method

.method public getActiveSecureElementList(Ljava/lang/String;)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2655
    const/4 v0, 0x0

    .line 2656
    .local v0, "list":[I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2657
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetActiveSecureElementList()[I

    move-result-object v0

    .line 2659
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 2660
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active element = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2662
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getCommittedAidRoutingTableSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2812
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2813
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getRemainingAidTableSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFWVersion()[B
    .locals 7

    .line 2767
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 2768
    .local v0, "buf":[B
    const-string v1, "NfcService"

    const-string v2, "Starting getFwVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v1

    .line 2770
    .local v1, "fwver":I
    const v2, 0xff00

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 2771
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 2772
    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    const/4 v5, 0x2

    aput-byte v2, v0, v5

    .line 2773
    const-string v2, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firmware version is 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 0x"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    return-object v0
.end method

.method public getMaxAidRoutingTableSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2805
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2806
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v0

    return v0
.end method

.method public getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;
    .locals 3

    .line 2638
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2640
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    if-nez v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcVzwService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcVzwService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

    return-object v0
.end method

.method public getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    .locals 1

    .line 2633
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/NxpNfcController;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedUicc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2973
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSelectedUicc()I

    move-result v0

    return v0

    .line 2974
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "NFC is not enabled"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServicesAidInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nxp/nfc/NxpAidServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2795
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getServicesAidInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mPOSGetReaderMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2904
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2907
    const/4 v0, 0x0

    return v0

    .line 2910
    :cond_0
    const/4 v0, 0x0

    .line 2911
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2912
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->mposGetReaderMode()Z

    move-result v2

    move v0, v2

    .line 2913
    monitor-exit v1

    .line 2914
    return v0

    .line 2913
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public mPOSSetReaderMode(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .line 2882
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2884
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2885
    return v1

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2889
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/nfc/DeviceHost;->mposSetReaderMode(Z)I

    move-result v2

    .line 2890
    .local v2, "status":I
    if-nez p2, :cond_3

    .line 2891
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2600()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 2892
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto :goto_0

    .line 2893
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    .line 2894
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2895
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2898
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 2899
    .end local v2    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nfcSelfTest(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 2945
    const/16 v0, 0xff

    .line 2946
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2948
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2949
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/nfc/DeviceHost;->doNfcSelfTest(I)I

    move-result v2

    move v0, v2

    .line 2950
    monitor-exit v1

    .line 2951
    return v0

    .line 2950
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyCheckCertResult(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2965
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCheckCertResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2968
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->setResultForX509Certificates(Z)V

    .line 2969
    return-void
.end method

.method public readerPassThruMode(BB)[B
    .locals 3
    .param p1, "status"    # B
    .param p2, "modulationTyp"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader pass through mode request: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with modulation: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->readerPassThruMode(BB)[B

    move-result-object v0

    return-object v0
.end method

.method public selectUicc(I)I
    .locals 5
    .param p1, "uiccSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2981
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2982
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2985
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->doselectUicc(I)I

    move-result v1

    .line 2986
    .local v1, "status":I
    const-string v2, "NfcService"

    const-string v3, "Update routing table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_2

    .line 2992
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "current_selected_uicc_id"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2993
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2994
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2996
    const-string v3, "NfcService"

    const-string v4, "Update routing table"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 2998
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v3, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 2999
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    goto :goto_0

    .line 3003
    :cond_1
    const-string v3, "NfcService"

    const-string v4, "Update only Mifare and Desfire route"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v3, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 3005
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3008
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 2983
    .end local v1    # "status":I
    :cond_3
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "configs"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 2818
    const-string v0, "NfcService"

    const-string v1, "Setting configs for Transit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2822
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->isNfccBusy()Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 2824
    const-string v0, "NfcService"

    const-string v2, "NFCC is busy.."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    return v1

    .line 2830
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/nfc/libnfc-nxpTransit.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v0, "newTextFile":Ljava/io/File;
    if-nez p1, :cond_2

    .line 2833
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2834
    const-string v2, "NfcService"

    const-string v3, "Removing transit config file. Taking default Value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2836
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Error taking defualt value"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2841
    :cond_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 2842
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 2844
    const-string v3, "NfcService"

    const-string v4, "File Written to libnfc-nxpTransit.conf successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    .end local v2    # "fw":Ljava/io/FileWriter;
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/nfc/DeviceHost;->setTransitConfig(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2850
    .end local v0    # "newTextFile":Ljava/io/File;
    nop

    .line 2854
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z

    .line 2855
    invoke-direct {p0, v2}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->WaitForAdapterChange(I)V

    .line 2856
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z

    .line 2857
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->WaitForAdapterChange(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2862
    nop

    .line 2863
    const/4 v0, 0x0

    return v0

    .line 2858
    :catch_0
    move-exception v0

    .line 2859
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcService"

    const-string v3, "Unable to restart NFC Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2861
    return v1

    .line 2847
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2848
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2849
    return v1
.end method

.method public setEmvCoPollProfile(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2649
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setEmvCoPollProfile(ZI)I

    move-result v0

    return v0
.end method

.method public startPoll(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2932
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2935
    return-void

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2939
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->startPoll()V

    .line 2940
    monitor-exit v0

    .line 2941
    return-void

    .line 2940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopPoll(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 2919
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2922
    return-void

    .line 2925
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2926
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost;->stopPoll(I)V

    .line 2927
    monitor-exit v0

    .line 2928
    return-void

    .line 2927
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transceiveAppData([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    const-string v0, "NfcService"

    const-string v1, "Transceive requested on reader pass through mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->transceiveAppData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public updateServiceState(ILjava/util/Map;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serviceState"    # Ljava/util/Map;

    .line 2800
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->updateServiceState(ILjava/util/Map;)I

    move-result v0

    return v0
.end method
