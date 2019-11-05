.class final Landroid/support/design/widget/n;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/view/View;

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/n;->d:I

    iget-object v2, p0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/n;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/n;->e:I

    iget-object v2, p0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/n;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->c(Landroid/view/View;I)V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/n;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/n;->d:I

    invoke-virtual {p0}, Landroid/support/design/widget/n;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
