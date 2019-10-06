.class public Lcom/android/nfc/EnableNfcDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "EnableNfcDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "EnableNfcDialogActivity"


# instance fields
.field mBt1:Landroid/widget/Button;

.field mBt2:Landroid/widget/Button;

.field mLaunchIntent:Landroid/content/Intent;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string v1, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/nfc/EnableNfcDialogActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 61
    const-string v1, "ENABLE_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 62
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 63
    const-string v1, "ENABLE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/nfc/EnableNfcDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/nfc/EnableNfcDialogActivity;->finish()V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x10302d2

    invoke-virtual {p0, v0}, Lcom/android/nfc/EnableNfcDialogActivity;->setTheme(I)V

    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/EnableNfcDialogActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 45
    iget-object v0, p0, Lcom/android/nfc/EnableNfcDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/nfc/EnableNfcDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 48
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/android/nfc/EnableNfcDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 49
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/android/nfc/EnableNfcDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 50
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/nfc/EnableNfcDialogActivity;->setupAlert()V

    .line 53
    return-void
.end method
