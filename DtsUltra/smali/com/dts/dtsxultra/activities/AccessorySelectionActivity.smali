.class public Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;
.super Landroid/support/v7/app/c;

# interfaces
.implements Landroid/support/v4/app/j$a;
.implements Lcom/dts/dtsxultra/c/a;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/dts/dtssdk/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "bluetoothAddress"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->l:Ljava/lang/String;

    const-string v0, "usbDeviceIdentifier"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->m:Ljava/lang/String;

    const-string v0, "audioRoute"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/dts/dtsxultra/b/b;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/b;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "showNotifAfterSelection"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "bluetoothAddress"

    iget-object v3, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()I

    return-void

    :cond_1
    const-string v1, "speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_2
    const-string v1, "usb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/dts/dtsxultra/b/m;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/m;-><init>()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->n:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/dts/dtsxultra/b/p;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/p;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "showNotifAfterSelection"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->m:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "usbDeviceIdentifier"

    iget-object v3, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/dts/dtsxultra/b/i;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/i;-><init>()V

    goto :goto_1
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V
    .locals 4

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    sget-object v0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->j:Ljava/lang/String;

    const-string v1, "onBrandedHeadphoneSelected() called with null accessory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Headphone selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->l:Ljava/lang/String;

    iget-object v2, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->m:Ljava/lang/String;

    iget-object v2, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/dts/dtsxultra/util/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->k:Landroid/widget/LinearLayout;

    invoke-static {v1, v0, v3}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    iget-object v0, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/dts/dtsxultra/util/a;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Headphone selected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final b_()V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->h()V

    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->setContentView(I)V

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j$a;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->h()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->d()V

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/c;->onPause()V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    return-void
.end method
