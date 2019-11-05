.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$b;,
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$e;,
        Landroid/support/design/widget/BaseTransientBottomBar$c;,
        Landroid/support/design/widget/BaseTransientBottomBar$d;,
        Landroid/support/design/widget/BaseTransientBottomBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field private static final f:Z

.field private static final g:[I


# instance fields
.field protected final b:Landroid/support/design/widget/BaseTransientBottomBar$e;

.field c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/BaseTransientBottomBar$a",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field final e:Landroid/support/design/widget/j$a;

.field private final h:Landroid/view/ViewGroup;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/support/design/h/a;

.field private k:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

.field private final l:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->f:Z

    new-array v0, v1, [I

    sget v1, Landroid/support/design/a$b;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->g:[I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->a:Landroid/os/Handler;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/h/a;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->j:Landroid/support/design/h/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/internal/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/content/Context;

    sget-object v4, Landroid/support/design/widget/BaseTransientBottomBar;->g:[I

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v4, v5, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    sget v0, Landroid/support/design/a$g;->mtrl_layout_snackbar:I

    :goto_1
    iget-object v4, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar$e;

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/BaseTransientBottomBar$e;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->h(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->s(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/n;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->i:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->l:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    sget v0, Landroid/support/design/a$g;->design_layout_snackbar:I

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/h/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->j:Landroid/support/design/h/a;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->f:Z

    return v0
.end method

.method private i()I
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getHeight()I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->c:I

    return v0
.end method

.method protected final a(I)V
    .locals 4

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    iget-object v2, v0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->e(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 5

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->a()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    iget-object v3, v0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iput v1, v2, Landroid/support/design/widget/j$b;->b:I

    iget-object v1, v0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    iget-object v2, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/design/widget/j;->e(Landroid/support/design/widget/j$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iput v1, v2, Landroid/support/design/widget/j$b;->b:I

    :goto_1
    iget-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v4, Landroid/support/design/widget/j$b;

    invoke-direct {v4, v1, v2}, Landroid/support/design/widget/j$b;-><init>(ILandroid/support/design/widget/j$a;)V

    iput-object v4, v0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0}, Landroid/support/design/widget/j;->b()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final b(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->i()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v1, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->a(I)V

    return-void
.end method

.method final c(I)V
    .locals 3

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    iget-object v2, v0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iget-object v1, v0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/j;->b()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar$a;

    invoke-virtual {v0, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$a;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method final d()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->k:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-nez v1, :cond_3

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>()V

    :goto_0
    instance-of v1, v2, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-static {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->a(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V

    :cond_0
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v1, v2, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;->g:I

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$c;)V

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->e()V

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->k:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->f()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$d;)V

    goto :goto_1
.end method

.method final e()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->i()I

    move-result v0

    sget-boolean v1, Landroid/support/design/widget/BaseTransientBottomBar;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v1, v0}, Landroid/support/v4/h/r;->b(Landroid/view/View;I)V

    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v2, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$11;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$11;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->b:Landroid/support/design/widget/BaseTransientBottomBar$e;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$e;->setTranslationY(F)V

    goto :goto_0
.end method

.method final f()V
    .locals 3

    invoke-static {}, Landroid/support/design/widget/j;->a()Landroid/support/design/widget/j;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->e:Landroid/support/design/widget/j$a;

    iget-object v2, v0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method final g()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->l:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
