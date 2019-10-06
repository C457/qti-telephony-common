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

    .line 3027
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

    .line 3340
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

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

    .line 3030
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3032
    const/4 v0, 0x0

    .line 3034
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3035
    const/16 v1, -0x11

    return v1

    .line 3039
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3040
    const/4 v1, -0x5

    if-nez v0, :cond_1

    .line 3041
    return v1

    .line 3044
    :cond_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3045
    return v1

    .line 3051
    :cond_2
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3052
    const/4 v1, 0x0

    return v1

    .line 3054
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

    .line 3258
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3263
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3264
    const/16 v0, -0x11

    return v0

    .line 3268
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3269
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 3270
    return v1

    .line 3273
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3274
    const/4 v1, 0x0

    return v1

    .line 3276
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

    .line 3350
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

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

    .line 3345
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

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

    .line 3083
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3086
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3087
    return-object v1

    .line 3091
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3092
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_1

    .line 3093
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    return-object v1

    .line 3095
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

    .line 3326
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3328
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

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

    .line 3118
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3120
    const/4 v0, 0x0

    .line 3123
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3124
    return v2

    .line 3128
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3129
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3130
    .local v1, "ndefInfo":[I
    if-nez v0, :cond_1

    .line 3131
    return v2

    .line 3133
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

    .line 3100
    const/4 v0, 0x0

    .line 3103
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3104
    return v2

    .line 3108
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3109
    if-nez v0, :cond_1

    .line 3110
    return v2

    .line 3113
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

    .line 3229
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

    .line 3234
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3239
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3240
    const/16 v0, -0x11

    return v0

    .line 3244
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3245
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 3246
    return v1

    .line 3249
    :cond_1
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3250
    const/4 v1, 0x0

    return v1

    .line 3252
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

    .line 3173
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3178
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3179
    return-object v1

    .line 3183
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3184
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_2

    .line 3185
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v2

    .line 3186
    .local v2, "buf":[B
    if-nez v2, :cond_1

    .line 3187
    return-object v1

    .line 3192
    :cond_1
    :try_start_0
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, v2}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 3193
    :catch_0
    move-exception v3

    .line 3194
    .local v3, "e":Landroid/nfc/FormatException;
    return-object v1

    .line 3197
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

    .line 3202
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3207
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3208
    const/16 v0, -0x11

    return v0

    .line 3212
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3213
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 3214
    return v1

    .line 3217
    :cond_1
    if-nez p2, :cond_2

    const/4 v1, -0x8

    return v1

    .line 3219
    :cond_2
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3220
    const/4 v1, 0x0

    return v1

    .line 3222
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

    .line 3060
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3062
    const/4 v0, 0x0

    .line 3065
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3066
    const/16 v1, -0x11

    return v1

    .line 3070
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3071
    const/4 v1, -0x5

    if-eqz v0, :cond_2

    .line 3072
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3073
    const/4 v1, 0x0

    return v1

    .line 3075
    :cond_1
    return v1

    .line 3078
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

    .line 3282
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3284
    const/4 v0, 0x0

    .line 3287
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3288
    return-object v2

    .line 3292
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3293
    if-eqz v0, :cond_1

    .line 3302
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3303
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3304
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 3306
    new-instance v1, Landroid/nfc/Tag;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v3

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v4

    .line 3307
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v6

    move-object v2, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3308
    .local v1, "newTag":Landroid/nfc/Tag;
    return-object v1

    .line 3310
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

    .line 3333
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3335
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3336
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

    .line 3315
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3316
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 3317
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 3318
    const/4 v1, 0x0

    return v1

    .line 3320
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

    .line 3139
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3141
    const/4 v0, 0x0

    .line 3145
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3146
    return-object v2

    .line 3150
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3151
    if-eqz v0, :cond_4

    .line 3153
    array-length v1, p2

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 3154
    new-instance v1, Landroid/nfc/TransceiveResult;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v1

    .line 3156
    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 3157
    .local v2, "targetLost":[I
    invoke-interface {v0, p2, p3, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v3

    .line 3159
    .local v3, "response":[B
    if-eqz v3, :cond_2

    .line 3160
    const/4 v1, 0x0

    .local v1, "result":I
    :goto_0
    goto :goto_1

    .line 3161
    .end local v1    # "result":I
    :cond_2
    const/4 v4, 0x0

    aget v4, v2, v4

    if-ne v4, v1, :cond_3

    .line 3162
    const/4 v1, 0x2

    goto :goto_0

    .line 3164
    :cond_3
    nop

    .line 3166
    .restart local v1    # "result":I
    :goto_1
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v3}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v4

    .line 3168
    .end local v1    # "result":I
    .end local v2    # "targetLost":[I
    .end local v3    # "response":[B
    :cond_4
    return-object v2
.end method
