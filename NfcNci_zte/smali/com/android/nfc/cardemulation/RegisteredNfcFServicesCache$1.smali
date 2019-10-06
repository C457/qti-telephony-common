.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 127
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 130
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "action":Ljava/lang/String;
    if-eq v0, v1, :cond_2

    .line 134
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    nop

    :cond_1
    move v1, v3

    .line 137
    .local v1, "replaced":Z
    if-nez v1, :cond_2

    .line 138
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 139
    .local v3, "currentUser":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 140
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 149
    .end local v1    # "replaced":Z
    .end local v3    # "currentUser":I
    :cond_2
    return-void
.end method
