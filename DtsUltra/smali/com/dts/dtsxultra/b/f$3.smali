.class final Lcom/dts/dtsxultra/b/f$3;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/f$3;->a:Lcom/dts/dtsxultra/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f$3;->a:Lcom/dts/dtsxultra/b/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f$3;->a:Lcom/dts/dtsxultra/b/f;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/f;->a(Lcom/dts/dtsxultra/b/f;)Landroid/support/v4/app/f;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/f$3;->a:Lcom/dts/dtsxultra/b/f;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/f;->a(Lcom/dts/dtsxultra/b/f;)Landroid/support/v4/app/f;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dts/dtsxultra/b/f$3$1;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/f$3$1;-><init>(Lcom/dts/dtsxultra/b/f$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dts/dtsxultra/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    return-void
.end method
