.class Lcom/android/nfc/WiredSeService$1;
.super Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;
.source "WiredSeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/WiredSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/WiredSeService;


# direct methods
.method constructor <init>(Lcom/android/nfc/WiredSeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/WiredSeService;

    .line 58
    iput-object p1, p0, Lcom/android/nfc/WiredSeService$1;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-direct {p0}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;-><init>()V

    return-void
.end method

.method private arrayListToByteArray(Ljava/util/ArrayList;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 70
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Byte;

    .line 71
    .local v0, "byteArray":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .line 72
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 73
    .local v2, "result":[B
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 74
    .local v5, "b":Ljava/lang/Byte;
    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v2, v1

    .line 73
    .end local v1    # "i":I
    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    .line 76
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method private byteArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 63
    .local v3, "b":Ljava/lang/Byte;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v3    # "b":Ljava/lang/Byte;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeWiredSe(I)I
    .locals 2
    .param p1, "wiredSeHandle"    # I

    .line 114
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: closeWiredSe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$002(I)I

    .line 117
    return v0
.end method

.method public getAtr(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "wiredSeHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: getAtr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/nfc/WiredSeService$1;->this$0:Lcom/android/nfc/WiredSeService;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v1, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doGetAtr(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/nfc/WiredSeService$1;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openWiredSe()I
    .locals 2

    .line 80
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: openWiredSe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/16 v1, 0xf3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$002(I)I

    .line 82
    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$000()I

    move-result v0

    if-gtz v0, :cond_0

    .line 83
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: open secure element failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$002(I)I

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: open secure element success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$000()I

    move-result v0

    return v0
.end method

.method public transmit(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 3
    .param p2, "wiredSeHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 92
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: transmit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-gtz p2, :cond_0

    .line 94
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: Secure Element handle NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/nfc/WiredSeService$1;->arrayListToByteArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/nfc/NfcService;->doTransceive(I[B)[B

    move-result-object v0

    .line 98
    .local v0, "resp":[B
    if-eqz v0, :cond_1

    .line 99
    const-string v1, "WiredSeService"

    const-string v2, "WiredSe: response is received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/nfc/WiredSeService$1;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
