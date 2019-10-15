.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 136
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 139
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "RegisteredServicesCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    if-eq v0, v1, :cond_6

    .line 143
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 144
    .local v1, "currentUser":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 145
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 147
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 148
    .local v4, "pkg":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->access$100(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->onPackageRemoved(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->access$100(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->writeDynamicApduService()Z

    .line 151
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v4, 0x1

    nop

    :cond_4
    move v3, v4

    .line 154
    .local v3, "replaced":Z
    if-nez v3, :cond_5

    .line 155
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    goto :goto_1

    .line 157
    :cond_5
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "RegisteredServicesCache"

    const-string v5, "Ignoring package intent due to package being replaced."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "currentUser":I
    .end local v3    # "replaced":Z
    :cond_6
    :goto_1
    return-void
.end method
