.class public Lcom/dts/dtsxultra/b/g;
.super Landroid/support/v4/app/e;


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field protected ac:Landroid/support/v4/app/f;

.field protected ad:Lcom/dts/dtssdk/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/g;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    return-void
.end method

.method static synthetic U()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/g;->X:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    const-string v0, "DTS Error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTS returned error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V
    .locals 3

    const-string v0, "DTS Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/g;->e()Landroid/support/v4/app/f;

    move-result-object v1

    const v2, 0x7f0f00c7

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00ca

    new-instance v3, Lcom/dts/dtsxultra/b/g$4;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/g$4;-><init>(Lcom/dts/dtsxultra/b/g;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/g;->e()Landroid/support/v4/app/f;

    move-result-object v1

    const v2, 0x7f0f00c7

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0051

    new-instance v3, Lcom/dts/dtsxultra/b/g$2;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/g$2;-><init>(Lcom/dts/dtsxultra/b/g;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dts/dtsxultra/b/g$1;

    invoke-direct {v2, p0, p3}, Lcom/dts/dtsxultra/b/g$1;-><init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtsxultra/c/b;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    sget-object v1, Lcom/dts/dtsxultra/b/g$7;->a:[I

    invoke-virtual {v0}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    new-instance v3, Lcom/dts/dtsxultra/b/g$5;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/g$5;-><init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtssdk/util/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/g;->ac:Landroid/support/v4/app/f;

    new-instance v3, Lcom/dts/dtsxultra/b/g$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/dts/dtsxultra/b/g$6;-><init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtssdk/util/a;Z)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public t()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/e;->t()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/g;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
