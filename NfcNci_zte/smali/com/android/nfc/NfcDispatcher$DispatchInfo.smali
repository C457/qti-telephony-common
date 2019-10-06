.class Lcom/android/nfc/NfcDispatcher$DispatchInfo;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchInfo"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field public final intent:Landroid/content/Intent;

.field final ndefMimeType:Ljava/lang/String;

.field final ndefUri:Landroid/net/Uri;

.field final packageManager:Landroid/content/pm/PackageManager;

.field final rootIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.ID"

    invoke-virtual {p2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 181
    if-eqz p3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 184
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 187
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    .line 190
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v1, "launchIntent"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 196
    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWebIntent()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public setNdefIntent()Landroid/content/Intent;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTagIntent()Landroid/content/Intent;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setTechIntent()Landroid/content/Intent;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method tryStartActivity()Z
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 248
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 251
    const/4 v1, 0x1

    return v1

    .line 253
    :cond_0
    return v3
.end method

.method tryStartActivity(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intentToStart"    # Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v2, "launchIntent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 262
    const/4 v1, 0x1

    return v1

    .line 264
    :cond_0
    return v2
.end method
