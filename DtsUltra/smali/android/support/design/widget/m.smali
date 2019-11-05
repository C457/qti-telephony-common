.class Landroid/support/design/widget/m;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/n;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    iput v0, p0, Landroid/support/design/widget/m;->b:I

    iput v0, p0, Landroid/support/design/widget/m;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Landroid/support/design/widget/m;->b:I

    iput v0, p0, Landroid/support/design/widget/m;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/m;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/n;

    invoke-direct {v0, p2}, Landroid/support/design/widget/n;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget-object v1, v0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/support/design/widget/n;->b:I

    iget-object v1, v0, Landroid/support/design/widget/n;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/support/design/widget/n;->c:I

    invoke-virtual {v0}, Landroid/support/design/widget/n;->a()V

    iget v0, p0, Landroid/support/design/widget/m;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget v1, p0, Landroid/support/design/widget/m;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->a(I)Z

    iput v3, p0, Landroid/support/design/widget/m;->b:I

    :cond_1
    iget v0, p0, Landroid/support/design/widget/m;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget v1, p0, Landroid/support/design/widget/m;->c:I

    iget v2, v0, Landroid/support/design/widget/n;->e:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Landroid/support/design/widget/n;->e:I

    invoke-virtual {v0}, Landroid/support/design/widget/n;->a()V

    :cond_2
    iput v3, p0, Landroid/support/design/widget/m;->c:I

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Landroid/support/design/widget/m;->b:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/m;->a:Landroid/support/design/widget/n;

    iget v0, v0, Landroid/support/design/widget/n;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
