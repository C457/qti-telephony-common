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

    .line 1669
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private WaitForAdapterChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1912
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v0, p1, :cond_0

    .line 1913
    nop

    .line 1921
    return-void

    .line 1916
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :goto_1
    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public DefaultRouteSet(IZZZ)V
    .locals 7
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1855
    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    .line 1858
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    const-string v2, "NfcService"

    if-eqz v1, :cond_9

    .line 1859
    const/4 v1, 0x0

    .line 1860
    .local v1, "protoRouteEntry":I
    and-int/lit8 v3, p1, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v0, :cond_0

    const/16 v3, 0x300

    goto :goto_0

    .line 1861
    :cond_0
    and-int/lit8 v3, p1, 0x7

    if-ne v3, v4, :cond_1

    const/16 v3, 0x200

    goto :goto_0

    .line 1862
    :cond_1
    and-int/lit8 v3, p1, 0x7

    if-ne v3, v5, :cond_2

    const/16 v3, 0x100

    goto :goto_0

    .line 1863
    :cond_2
    move v3, v6

    :goto_0
    move v1, v3

    .line 1864
    nop

    .line 1865
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    .line 1866
    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    or-int/2addr v3, v4

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    move v0, v6

    :goto_3
    or-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 1868
    .end local v1    # "protoRouteEntry":I
    .local v0, "protoRouteEntry":I
    if-nez p1, :cond_6

    .line 1876
    and-int/lit16 v0, v0, 0xe9

    .line 1878
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultRouteSet : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v1

    if-eq v1, p1, :cond_8

    .line 1881
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 1882
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1883
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1884
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1885
    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_7

    .line 1886
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 1887
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 1889
    :cond_7
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v6, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1891
    .end local v0    # "protoRouteEntry":I
    :cond_8
    goto :goto_4

    .line 1893
    :cond_9
    const-string v0, "DefaultRoute can not be set. mIsHceCapable = flase"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :goto_4
    return-void

    .line 1856
    :cond_a
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1710
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    .line 1714
    const/4 v1, 0x0

    .line 1715
    .local v1, "techRouteEntry":I
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v0, :cond_0

    const/16 v2, 0x300

    goto :goto_0

    .line 1716
    :cond_0
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v4, :cond_1

    const/16 v2, 0x200

    goto :goto_0

    .line 1717
    :cond_1
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v3, :cond_2

    const/16 v2, 0x100

    goto :goto_0

    .line 1718
    :cond_2
    move v2, v5

    :goto_0
    move v1, v2

    .line 1719
    nop

    .line 1720
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTPowerState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    .line 1721
    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    or-int/2addr v2, v4

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    or-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 1722
    .end local v1    # "techRouteEntry":I
    .local v0, "techRouteEntry":I
    or-int/lit16 v0, v0, 0x800

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MifareCLTRouteSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 1726
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1727
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1728
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 1729
    return-void

    .line 1711
    .end local v0    # "techRouteEntry":I
    :cond_6
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1677
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    .line 1680
    const/4 v1, 0x0

    .line 1682
    .local v1, "protoRouteEntry":I
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v0, :cond_0

    const/16 v2, 0x300

    goto :goto_0

    .line 1683
    :cond_0
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v4, :cond_1

    const/16 v2, 0x200

    goto :goto_0

    .line 1684
    :cond_1
    and-int/lit8 v2, p1, 0x7

    if-ne v2, v3, :cond_2

    const/16 v2, 0x100

    goto :goto_0

    .line 1685
    :cond_2
    move v2, v5

    :goto_0
    move v1, v2

    .line 1686
    nop

    .line 1687
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultDesfirePowerState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    .line 1688
    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    or-int/2addr v2, v4

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    or-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 1690
    .end local v1    # "protoRouteEntry":I
    .local v0, "protoRouteEntry":I
    if-nez p1, :cond_6

    .line 1697
    and-int/lit16 v0, v0, 0xe9

    .line 1700
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MifareDesfireRouteSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/nfc/NfcService;->access$602(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 1702
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1703
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1704
    const-string v1, "MifareDesfireRouteSet function in"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 1706
    return-void

    .line 1678
    .end local v0    # "protoRouteEntry":I
    :cond_7
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "UICC2 is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public activateSeInterface()I
    .locals 2

    .line 2060
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2061
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->activateSeInterface()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeDiscoveryTech(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1782
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1783
    const-string v1, "NfcService"

    const-string v2, "changeDiscoveryTech. NFC is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    monitor-exit v0

    return-void

    .line 1787
    :cond_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDiscoveryTech. pollTech : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", listenTech : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    const/16 v1, 0xff

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    if-ne p3, v1, :cond_2

    .line 1793
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-nez v1, :cond_1

    .line 1794
    const-string v1, "NfcService"

    const-string v3, "changeDiscoveryTech. Android Beam was temporarily enabled, so disable this."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1797
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/nfc/DeviceHost;->doChangeDiscoveryTech(II)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1800
    goto :goto_0

    .line 1798
    :catch_0
    move-exception v1

    .line 1799
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    const-string v3, "NfcService"

    const-string v4, "Change Tech Binder was never registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    nop

    .end local v1    # "e":Ljava/util/NoSuchElementException;
    goto :goto_0

    .line 1803
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-nez v1, :cond_3

    .line 1804
    const-string v1, "NfcService"

    const-string v3, "changeDiscoveryTech. Android Beam is disabled, so enable this temporarily."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1, v2, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1807
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/nfc/DeviceHost;->doChangeDiscoveryTech(II)V

    .line 1810
    :goto_0
    const-string v1, "NfcService"

    const-string v3, "applyRouting #15"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1812
    monitor-exit v0

    .line 1813
    return-void

    .line 1812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deactivateSeInterface()I
    .locals 2

    .line 2071
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 2072
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->deactivateSeInterface()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doReadT4tData([B)[B
    .locals 5
    .param p1, "fileId"    # [B

    .line 2112
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2114
    .local v0, "readBundle":Landroid/os/Bundle;
    const-string v1, "fileId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2116
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2117
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2118
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2119
    monitor-exit v1

    .line 2122
    goto :goto_0

    .line 2119
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "readBundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .end local p1    # "fileId":[B
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2120
    .restart local v0    # "readBundle":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .restart local p1    # "fileId":[B
    :catch_0
    move-exception v1

    .line 2121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "readData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2126
    .local v1, "readData":[B
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 2127
    return-object v1
.end method

.method public doWriteT4tData([B[BI)I
    .locals 5
    .param p1, "fileId"    # [B
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .line 2090
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2091
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2092
    .local v0, "writeBundle":Landroid/os/Bundle;
    const-string v1, "fileId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2093
    const-string v1, "writeData"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2094
    const-string v1, "length"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2096
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v2, 0x44

    invoke-virtual {v1, v2, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2097
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2099
    monitor-exit v1

    .line 2102
    goto :goto_0

    .line 2099
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "writeBundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .end local p1    # "fileId":[B
    .end local p2    # "data":[B
    .end local p3    # "length":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2100
    .restart local v0    # "writeBundle":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .restart local p1    # "fileId":[B
    .restart local p2    # "data":[B
    .restart local p3    # "length":I
    :catch_0
    move-exception v1

    .line 2101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2105
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "writeStatus"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2106
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 2107
    return v1
.end method

.method public getActiveSecureElementList(Ljava/lang/String;)[I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "list":[I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetActiveSecureElementList()[I

    move-result-object v0

    .line 1737
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active element = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1740
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

    .line 2043
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2044
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

    .line 1900
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1901
    .local v0, "buf":[B
    const-string v1, "NfcService"

    const-string v2, "Starting getFwVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getFWVersion()I

    move-result v2

    .line 1903
    .local v2, "fwver":I
    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 1904
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    .line 1905
    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v6, 0x2

    aput-byte v3, v0, v6

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firmware version is 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    return-object v0
.end method

.method public getMaxAidRoutingTableSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2038
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v0

    return v0
.end method

.method public getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1672
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    return-object v0
.end method

.method public getSelectedUicc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2049
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSelectedUicc()I

    move-result v0

    return v0

    .line 2050
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
            "Lcom/nxp/nfc/NfcAidServiceInfo;",
            ">;"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getServicesAidInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isFieldDetectEnabled()Z
    .locals 1

    .line 2084
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2085
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->isFieldDetectEnabled()Z

    move-result v0

    return v0
.end method

.method public mPOSGetReaderMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1767
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    const/4 v0, 0x0

    return v0

    .line 1771
    :cond_0
    const/4 v0, 0x0

    .line 1772
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1773
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->mposGetReaderMode()Z

    move-result v2

    move v0, v2

    .line 1774
    monitor-exit v1

    .line 1775
    return v0

    .line 1774
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

    .line 1746
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1747
    return v1

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1751
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/nfc/DeviceHost;->mposSetReaderMode(Z)I

    move-result v2

    .line 1752
    .local v2, "status":I
    if-nez p2, :cond_3

    .line 1753
    invoke-static {}, Lcom/android/nfc/NfcService;->access$500()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 1754
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto :goto_0

    .line 1755
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    .line 1756
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1757
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1760
    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    .line 1761
    .end local v2    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nfcSelfTest(I)I
    .locals 3
    .param p1, "type"    # I

    .line 1841
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1842
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1843
    const/16 v0, 0xff

    .line 1845
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1846
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/nfc/DeviceHost;->doNfcSelfTest(I)I

    move-result v2

    move v0, v2

    .line 1847
    monitor-exit v1

    .line 1848
    return v0

    .line 1847
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public readerPassThruMode(BB)[B
    .locals 2
    .param p1, "status"    # B
    .param p2, "modulationTyp"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reader pass through mode request: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with modulation: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

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

    .line 1991
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1992
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1995
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->doselectUicc(I)I

    move-result v1

    .line 1996
    .local v1, "status":I
    const-string v2, "NfcService"

    const-string v3, "Update routing table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_2

    .line 2002
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "current_selected_uicc_id"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2003
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2004
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2006
    const-string v3, "NfcService"

    const-string v4, "Update routing table"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 2008
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 2009
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 2010
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 2011
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 2012
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->computeRoutingParameters()V

    .line 2013
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->commitRouting()V

    goto :goto_0

    .line 2017
    :cond_1
    const-string v2, "NfcService"

    const-string v3, "Update only Mifare and Desfire route"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2021
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 1993
    .end local v1    # "status":I
    :cond_3
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .end local p1    # "uiccSlot":I
    throw v1

    .line 2022
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NxpNfcAdapterService;
    .restart local p1    # "uiccSlot":I
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

    .line 1941
    const-string v0, "NfcService"

    const-string v1, "Setting configs for Transit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1945
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->isNfccBusy()Z

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_0

    .line 1947
    const-string v1, "NFCC is busy.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return v2

    .line 1953
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/nfc/libnfc-nxpTransit.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1954
    .local v1, "newTextFile":Ljava/io/File;
    if-nez p1, :cond_2

    .line 1956
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1957
    const-string v3, "Removing transit config file. Taking default Value"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1959
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Error taking defualt value"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1964
    :cond_2
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1965
    .local v3, "fw":Ljava/io/FileWriter;
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 1967
    const-string v4, "File Written to libnfc-nxpTransit.conf successfully"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    .end local v3    # "fw":Ljava/io/FileWriter;
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/nfc/DeviceHost;->setTransitConfig(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1973
    nop

    .line 1977
    .end local v1    # "newTextFile":Ljava/io/File;
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z

    .line 1978
    invoke-direct {p0, v3}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->WaitForAdapterChange(I)V

    .line 1979
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z

    .line 1980
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->WaitForAdapterChange(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1985
    nop

    .line 1986
    const/4 v0, 0x0

    return v0

    .line 1981
    :catch_0
    move-exception v1

    .line 1982
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to restart NFC Service"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1984
    return v2

    .line 1970
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1971
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1972
    return v2
.end method

.method public setFieldDetectMode(Z)I
    .locals 1
    .param p1, "mode"    # Z

    .line 2078
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2079
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->doSetFieldDetectMode(Z)I

    move-result v0

    return v0
.end method

.method public startPoll(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1830
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1831
    return-void

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->startPoll()V

    .line 1836
    monitor-exit v0

    .line 1837
    return-void

    .line 1836
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

    .line 1818
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost;->stopPoll(I)V

    .line 1824
    monitor-exit v0

    .line 1825
    return-void

    .line 1824
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

    .line 1936
    const-string v0, "NfcService"

    const-string v1, "Transceive requested on reader pass through mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->transceiveAppData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public updateServiceState(ILjava/util/Map;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serviceState"    # Ljava/util/Map;

    .line 2032
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->updateServiceState(ILjava/util/Map;)I

    move-result v0

    return v0
.end method
