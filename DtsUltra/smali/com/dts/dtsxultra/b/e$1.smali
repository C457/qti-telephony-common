.class final Lcom/dts/dtsxultra/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/e;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/e$1;->a:Lcom/dts/dtsxultra/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/e$1;->a:Lcom/dts/dtsxultra/b/e;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/e;->a(Lcom/dts/dtsxultra/b/e;Lcom/dts/dtssdk/a/j;)V

    :cond_0
    return-void
.end method
