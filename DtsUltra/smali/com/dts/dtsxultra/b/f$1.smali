.class final Lcom/dts/dtsxultra/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/f;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/f$1;->a:Lcom/dts/dtsxultra/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f$1;->a:Lcom/dts/dtsxultra/b/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f$1;->a:Lcom/dts/dtsxultra/b/f;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/f$1;->a:Lcom/dts/dtsxultra/b/f;

    iget-object v2, v2, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v2}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dts/dtsxultra/b/f$1$1;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/f$1$1;-><init>(Lcom/dts/dtsxultra/b/f$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dts/dtsxultra/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    return-void
.end method
