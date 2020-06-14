.class final Lcom/dts/dtsxultra/views/d$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/j;

.field final synthetic b:I

.field final synthetic c:Lcom/dts/dtsxultra/views/d$b;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/views/d$b;Lcom/dts/dtssdk/a/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iput-object p2, p0, Lcom/dts/dtsxultra/views/d$b$1;->a:Lcom/dts/dtssdk/a/j;

    iput p3, p0, Lcom/dts/dtsxultra/views/d$b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f05008d

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d;->i:Lcom/dts/dtsxultra/views/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-boolean v0, v0, Lcom/dts/dtsxultra/views/d;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->a:Lcom/dts/dtssdk/a/j;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v1

    iput-object v1, v0, Lcom/dts/dtsxultra/views/d;->f:Lcom/dts/dtssdk/util/d;

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d;->i:Lcom/dts/dtsxultra/views/d$a;

    iget-object v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->a:Lcom/dts/dtssdk/a/j;

    invoke-interface {v0, v1}, Lcom/dts/dtsxultra/views/d$a;->a(Lcom/dts/dtssdk/a/j;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget v1, v1, Lcom/dts/dtsxultra/views/d;->h:I

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/views/d;->c(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/d$b;->a(Lcom/dts/dtsxultra/views/d$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/d$b;->b(Lcom/dts/dtsxultra/views/d$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d$b$1;->c:Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget v1, p0, Lcom/dts/dtsxultra/views/d$b$1;->b:I

    iput v1, v0, Lcom/dts/dtsxultra/views/d;->h:I

    :cond_0
    return-void
.end method
