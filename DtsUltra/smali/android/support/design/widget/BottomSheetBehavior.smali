.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$a;,
        Landroid/support/design/widget/BottomSheetBehavior$b;
    }
.end annotation

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
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:I

.field f:Landroid/support/v4/widget/n;

.field g:I

.field h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Landroid/view/VelocityTracker;

.field private w:I

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Landroid/support/v4/widget/n$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/v4/widget/n$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/v4/widget/n$a;

    sget-object v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_2

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    :goto_0
    sget v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    sget v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    :cond_1
    sget v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    return-void

    :cond_2
    sget v0, Landroid/support/design/a$i;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->c(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/support/v4/h/r;->x(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0x10

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v4, v1, :cond_3

    if-nez p1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v1, 0x4

    invoke-static {v4, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->x:Ljava/util/Map;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0
.end method

.method private c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez v2, :cond_3

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    if-eq v2, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$a;

    iget-object v0, p3, Landroid/support/v4/h/a;->e:Landroid/os/Parcelable;

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    :goto_0
    return-void

    :cond_1
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$a;->a:I

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    goto :goto_0
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v5

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    if-lez v0, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput-object p2, v2, Landroid/support/v4/widget/n;->d:Landroid/view/View;

    const/4 v5, -0x1

    iput v5, v2, Landroid/support/v4/widget/n;->c:I

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/support/v4/widget/n;->a(IIII)Z

    move-result v1

    if-nez v1, :cond_2

    iget v3, v2, Landroid/support/v4/widget/n;->a:I

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/support/v4/widget/n;->d:Landroid/view/View;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/widget/n;->d:Landroid/view/View;

    :cond_2
    if-eqz v1, :cond_c

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$b;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_2
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->m:F

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    goto :goto_3

    :cond_5
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    if-nez v0, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->l:Z

    if-eqz v5, :cond_7

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v3, v0, :cond_6

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_6
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_7
    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    if-ge v0, v5, :cond_9

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_8

    move v0, v1

    move v1, v4

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v1, v0

    move v0, v3

    goto/16 :goto_1

    :cond_9
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v1, v0, :cond_a

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v1, v0

    move v0, v3

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 v3, 0x1

    if-ne p7, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, v0, p5

    if-lez p5, :cond_4

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p6, v3

    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    goto :goto_0

    :cond_3
    aput p5, p6, v3

    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    :cond_4
    if-gez p5, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-le v1, v2, :cond_5

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v1, :cond_6

    :cond_5
    aput p5, p6, v3

    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto :goto_1
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/support/v4/h/r;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/h/r;->r(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->o:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/a$c;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    :cond_1
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->p:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    :goto_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->b()V

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->d()I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->y:Landroid/support/v4/widget/n$a;

    invoke-static {p1, v0}, Landroid/support/v4/widget/n;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/n$a;)Landroid/support/v4/widget/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    return v4

    :cond_4
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->q:I

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    goto :goto_1

    :cond_8
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v3, v1, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/n;->b(Landroid/view/MotionEvent;)V

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->c()V

    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    if-nez v3, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v2, :cond_6

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    iget v3, v3, Landroid/support/v4/widget/n;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/widget/n;->a(Landroid/view/View;I)V

    :cond_6
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->t:I

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->u:Z

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final a(Landroid/view/View;F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->r:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->n:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$a;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$a;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->a(Z)V

    goto :goto_1
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->c()V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/n;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    iput v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:I

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_5

    iget v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:I

    invoke-virtual {p1, v0, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    :cond_5
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    if-ne v0, v7, :cond_7

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:I

    invoke-virtual {p1, p2, v5, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_4
    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->s:Z

    if-nez v3, :cond_0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-eq v3, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->w:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    iget v3, v3, Landroid/support/v4/widget/n;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v3

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
