.class final Lcom/dts/dtsxultra/b/o$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/o;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-virtual {v2}, Lcom/dts/dtsxultra/b/o;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dts/dtsxultra/b/o$10$1;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/o$10$1;-><init>(Lcom/dts/dtsxultra/b/o$10;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/dts/dtsxultra/b/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    return-void
.end method
