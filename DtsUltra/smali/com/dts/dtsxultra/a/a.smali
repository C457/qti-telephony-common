.class public final Lcom/dts/dtsxultra/a/a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/a/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/dts/dtsxultra/a/a$a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dts/dtsxultra/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/a/a;)Lcom/dts/dtsxultra/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a;->a:Lcom/dts/dtsxultra/a/a$a;

    return-object v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/a/a;->dismiss()V

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a;->a:Lcom/dts/dtsxultra/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a;->a:Lcom/dts/dtsxultra/a/a$a;

    invoke-interface {v0}, Lcom/dts/dtsxultra/a/a$a;->a()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/a/a;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/a/a;->b:Landroid/content/Context;

    const v1, 0x7f0b003f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/dts/dtsxultra/a/a$1;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/a/a$1;-><init>(Lcom/dts/dtsxultra/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/a/a;->setContentView(Landroid/view/View;)V

    return-void
.end method
