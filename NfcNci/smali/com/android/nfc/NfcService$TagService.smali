.class final Lcom/android/nfc/NfcService$TagService;
.super Landroid/nfc/INfcTag$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2122
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcTag$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .locals 1
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public connect(II)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2127
    const/4 v0, 0x0

    .line 2129
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2130
    const/16 v1, -0x11

    return v1

    .line 2134
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2135
    const/4 v1, -0x5

    if-nez v0, :cond_1

    .line 2136
    return v1

    .line 2139
    :cond_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2140
    return v1

    .line 2146
    :cond_2
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2147
    const/4 v1, 0x0

    return v1

    .line 2149
    :cond_3
    return v1
.end method

.method public formatNdef(I[B)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2358
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2359
    const/16 v0, -0x11

    return v0

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2364
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2365
    return v1

    .line 2368
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2369
    const/4 v1, 0x0

    return v1

    .line 2371
    :cond_2
    return v1
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2445
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2440
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .locals 2
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2178
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2181
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2182
    return-object v1

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2187
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_1

    .line 2188
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    return-object v1

    .line 2190
    :cond_1
    return-object v1
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2423
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2215
    const/4 v0, 0x0

    .line 2218
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2219
    return v2

    .line 2223
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2224
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2225
    .local v1, "ndefInfo":[I
    if-nez v0, :cond_1

    .line 2226
    return v2

    .line 2228
    :cond_1
    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    return v2
.end method

.method public isPresent(I)Z
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2195
    const/4 v0, 0x0

    .line 2198
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2199
    return v2

    .line 2203
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2204
    if-nez v0, :cond_1

    .line 2205
    return v2

    .line 2208
    :cond_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    return v1
.end method

.method public ndefIsWritable(I)Z
    .locals 1
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2334
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    const/16 v0, -0x11

    return v0

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2340
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2341
    return v1

    .line 2344
    :cond_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2345
    const/4 v1, 0x0

    return v1

    .line 2347
    :cond_2
    return v1
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .locals 4
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2273
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2274
    return-object v1

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2279
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_2

    .line 2280
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v2

    .line 2281
    .local v2, "buf":[B
    if-nez v2, :cond_1

    .line 2282
    return-object v1

    .line 2287
    :cond_1
    :try_start_0
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, v2}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2288
    :catch_0
    move-exception v3

    .line 2289
    .local v3, "e":Landroid/nfc/FormatException;
    return-object v1

    .line 2292
    .end local v2    # "buf":[B
    .end local v3    # "e":Landroid/nfc/FormatException;
    :cond_2
    return-object v1
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2297
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2302
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2303
    const/16 v0, -0x11

    return v0

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2308
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2309
    return v1

    .line 2312
    :cond_1
    if-nez p2, :cond_2

    const/4 v1, -0x8

    return v1

    .line 2314
    :cond_2
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2315
    const/4 v1, 0x0

    return v1

    .line 2317
    :cond_3
    return v1
.end method

.method public reconnect(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2157
    const/4 v0, 0x0

    .line 2160
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2161
    const/16 v1, -0x11

    return v1

    .line 2165
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2166
    const/4 v1, -0x5

    if-eqz v0, :cond_2

    .line 2167
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2168
    const/4 v1, 0x0

    return v1

    .line 2170
    :cond_1
    return v1

    .line 2173
    :cond_2
    return v1
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .locals 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2377
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2379
    const/4 v0, 0x0

    .line 2382
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2383
    return-object v2

    .line 2387
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2388
    if-eqz v0, :cond_1

    .line 2397
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 2398
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 2399
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 2401
    new-instance v1, Landroid/nfc/Tag;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v3

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v4

    .line 2402
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v6

    move-object v2, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 2403
    .local v1, "newTag":Landroid/nfc/Tag;
    return-object v1

    .line 2405
    .end local v1    # "newTag":Landroid/nfc/Tag;
    :cond_1
    return-object v2
.end method

.method public resetTimeouts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2428
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2430
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 2431
    return-void
.end method

.method public setTimeout(II)I
    .locals 2
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2410
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2411
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 2412
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 2413
    const/4 v1, 0x0

    return v1

    .line 2415
    :cond_0
    const/4 v1, -0x8

    return v1
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .locals 5
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2236
    const/4 v0, 0x0

    .line 2240
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2241
    return-object v2

    .line 2245
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2246
    if-eqz v0, :cond_4

    .line 2248
    array-length v1, p2

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 2249
    new-instance v1, Landroid/nfc/TransceiveResult;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v1

    .line 2251
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 2252
    .local v2, "targetLost":[I
    invoke-interface {v0, p2, p3, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v3

    .line 2254
    .local v3, "response":[B
    if-eqz v3, :cond_2

    .line 2255
    const/4 v1, 0x0

    .local v1, "result":I
    goto :goto_0

    .line 2256
    .end local v1    # "result":I
    :cond_2
    const/4 v4, 0x0

    aget v4, v2, v4

    if-ne v4, v1, :cond_3

    .line 2257
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_0

    .line 2259
    .end local v1    # "result":I
    :cond_3
    const/4 v1, 0x1

    .line 2261
    .restart local v1    # "result":I
    :goto_0
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v3}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v4

    .line 2263
    .end local v1    # "result":I
    .end local v2    # "targetLost":[I
    .end local v3    # "response":[B
    :cond_4
    return-object v2
.end method
