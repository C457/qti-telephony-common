.class public Lcom/dts/dtsxultra/activities/MainActivity;
.super Landroid/support/v7/app/c;

# interfaces
.implements Landroid/support/v4/app/j$a;
.implements Lcom/dts/dtsxultra/b/l$a;
.implements Lcom/dts/dtsxultra/c/a;
.implements Lcom/dts/dtsxultra/c/c;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private k:Landroid/widget/LinearLayout;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/activities/MainActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/activities/MainActivity;->l:Z

    return-void
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

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
    .locals 3

    const/high16 v2, 0x7f0e0000

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    sget-object v0, Lcom/dts/dtsxultra/activities/MainActivity;->j:Ljava/lang/String;

    const-string v1, "onBrandedHeadphoneSelected() called with null accessory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/MainActivity;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/dts/dtsxultra/util/a;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/activities/MainActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    return-void
.end method

.method public final b_()V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->i()V

    return-void
.end method

.method public final f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/activities/MainActivity;->l:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->e()I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/c;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/MainActivity;->setContentView(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/MainActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/MainActivity;->a(Landroid/support/v7/widget/Toolbar;)V

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

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->b()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/j$a;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->e()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Active fragments ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") already detected. Suppressing MainFragment creation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/b/l;

    invoke-direct {v1}, Lcom/dts/dtsxultra/b/l;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/c;->onDestroy()V

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

    iget-boolean v0, p0, Lcom/dts/dtsxultra/activities/MainActivity;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/c;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/c;->onStart()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/c;->onStop()V

    return-void
.end method
