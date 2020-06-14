.class final Lcom/dts/dtsxultra/views/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/views/a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$w;

.field final synthetic c:Lcom/dts/dtsxultra/views/a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/views/a;ILandroid/support/v7/widget/RecyclerView$w;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    iput p2, p0, Lcom/dts/dtsxultra/views/a$1;->a:I

    iput-object p3, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/support/v7/widget/RecyclerView$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/dts/dtsxultra/views/a$1;->a:I

    iget-object v1, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    invoke-static {v1}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtsxultra/views/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtsxultra/views/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/views/a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/a;->b(Lcom/dts/dtsxultra/views/a;)Lcom/dts/dtsxultra/views/a$b;

    move-result-object v1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtsxultra/views/a;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/dts/dtsxultra/views/a$1;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    invoke-interface {v1, v0}, Lcom/dts/dtsxultra/views/a$b;->a(Lcom/dts/dtssdk/a/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/support/v7/widget/RecyclerView$w;

    check-cast v0, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    invoke-static {v1}, Lcom/dts/dtsxultra/views/a;->c(Lcom/dts/dtsxultra/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/views/a;->c(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtsxultra/views/a;

    iget v1, p0, Lcom/dts/dtsxultra/views/a$1;->a:I

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtsxultra/views/a;I)I

    :cond_0
    return-void
.end method
