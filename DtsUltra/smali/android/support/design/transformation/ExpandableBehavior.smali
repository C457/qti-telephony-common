.class public abstract Landroid/support/design/transformation/ExpandableBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    return-void
.end method

.method static synthetic a(Landroid/support/design/transformation/ExpandableBehavior;)I
    .locals 1

    iget v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    return v0
.end method

.method private a(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v0, Landroid/support/design/d/b;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/design/d/b;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/support/design/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    iget v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/support/design/transformation/ExpandableBehavior$1;

    invoke-direct {v4, p0, p2, v0, v1}, Landroid/support/design/transformation/ExpandableBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/d/b;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    check-cast p3, Landroid/support/design/d/b;

    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/design/transformation/ExpandableBehavior;->a:I

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-interface {p3}, Landroid/support/design/d/b;->a()Z

    move-result v2

    invoke-virtual {p0, v0, p2, v2, v1}, Landroid/support/design/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract a(Landroid/view/View;Landroid/view/View;)Z
.end method

.method protected abstract a(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method
