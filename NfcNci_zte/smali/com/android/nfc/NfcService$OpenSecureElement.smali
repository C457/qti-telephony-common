.class Lcom/android/nfc/NfcService$OpenSecureElement;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSecureElement"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public handle:I

.field public pid:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 3696
    iput-object p1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3697
    iput p2, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    .line 3698
    iput p3, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    .line 3699
    iput-object p4, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    .line 3700
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 3703
    iget-object v0, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3704
    :try_start_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3707
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v1, v3}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3708
    goto :goto_0

    :catch_0
    move-exception v1

    .line 3709
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 3710
    return-void

    .line 3709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3713
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    .line 3714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3713
    return-object v0
.end method
