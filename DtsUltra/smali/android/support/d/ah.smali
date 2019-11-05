.class public abstract Landroid/support/d/ah;
.super Landroid/support/d/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/d/ah$a;,
        Landroid/support/d/ah$b;
    }
.end annotation


# static fields
.field private static final o:[Ljava/lang/String;


# instance fields
.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/d/ah;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/d/l;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/d/ah;->n:I

    return-void
.end method

.method private static b(Landroid/support/d/r;Landroid/support/d/r;)Landroid/support/d/ah$b;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/support/d/ah$b;

    invoke-direct {v1}, Landroid/support/d/ah$b;-><init>()V

    iput-boolean v4, v1, Landroid/support/d/ah$b;->a:Z

    iput-boolean v4, v1, Landroid/support/d/ah$b;->b:Z

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/d/ah$b;->c:I

    iget-object v0, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/d/ah$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/support/d/ah$b;->d:I

    iget-object v0, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroid/support/d/ah$b;->f:Landroid/view/ViewGroup;

    :goto_1
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    iget v0, v1, Landroid/support/d/ah$b;->c:I

    iget v2, v1, Landroid/support/d/ah$b;->d:I

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroid/support/d/ah$b;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroid/support/d/ah$b;->f:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    iput v5, v1, Landroid/support/d/ah$b;->c:I

    iput-object v6, v1, Landroid/support/d/ah$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iput v5, v1, Landroid/support/d/ah$b;->d:I

    iput-object v6, v1, Landroid/support/d/ah$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/support/d/ah$b;->c:I

    iget v2, v1, Landroid/support/d/ah$b;->d:I

    if-eq v0, v2, :cond_5

    iget v0, v1, Landroid/support/d/ah$b;->c:I

    if-nez v0, :cond_4

    iput-boolean v4, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    :cond_3
    :goto_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    iget v0, v1, Landroid/support/d/ah$b;->d:I

    if-nez v0, :cond_3

    iput-boolean v3, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    goto :goto_3

    :cond_5
    iget-object v0, v1, Landroid/support/d/ah$b;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    iput-boolean v4, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    goto :goto_3

    :cond_6
    iget-object v0, v1, Landroid/support/d/ah$b;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iput-boolean v3, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    goto :goto_3

    :cond_7
    if-nez p0, :cond_8

    iget v0, v1, Landroid/support/d/ah$b;->d:I

    if-nez v0, :cond_8

    iput-boolean v3, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    goto :goto_3

    :cond_8
    if-nez p1, :cond_3

    iget v0, v1, Landroid/support/d/ah$b;->c:I

    if-nez v0, :cond_3

    iput-boolean v4, v1, Landroid/support/d/ah$b;->b:Z

    iput-boolean v3, v1, Landroid/support/d/ah$b;->a:Z

    goto :goto_3
.end method

.method private static d(Landroid/support/d/r;)V
    .locals 3

    iget-object v0, p0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/d/r;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/support/d/r;Landroid/support/d/r;)Landroid/animation/Animator;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p3}, Landroid/support/d/ah;->b(Landroid/support/d/r;Landroid/support/d/r;)Landroid/support/d/ah$b;

    move-result-object v0

    iget-boolean v1, v0, Landroid/support/d/ah$b;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/d/ah$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/d/ah$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, v0, Landroid/support/d/ah$b;->b:Z

    if-eqz v1, :cond_4

    iget v0, p0, Landroid/support/d/ah;->n:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_1

    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p3, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v6}, Landroid/support/d/ah;->b(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v1

    invoke-virtual {p0, v0, v6}, Landroid/support/d/ah;->a(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/d/ah;->b(Landroid/support/d/r;Landroid/support/d/r;)Landroid/support/d/ah$b;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/d/ah$b;->a:Z

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p3, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Landroid/support/d/ah;->a(Landroid/view/View;Landroid/support/d/r;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget v3, v0, Landroid/support/d/ah$b;->d:I

    iget v0, p0, Landroid/support/d/ah;->n:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_1

    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/support/d/r;->b:Landroid/view/View;

    :goto_1
    if-eqz p3, :cond_7

    iget-object v0, p3, Landroid/support/d/r;->b:Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_5
    if-eqz v0, :cond_8

    move-object v1, v0

    move-object v0, v2

    :goto_3
    if-eqz v1, :cond_11

    if-eqz p2, :cond_11

    iget-object v0, p2, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v2, v0, v6

    aget v0, v0, v7

    new-array v3, v8, [I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v4, v3, v6

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    aget v2, v3, v7

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_f

    new-instance v0, Landroid/support/d/u;

    invoke-direct {v0, p1}, Landroid/support/d/u;-><init>(Landroid/view/ViewGroup;)V

    :goto_4
    invoke-interface {v0, v1}, Landroid/support/d/v;->a(Landroid/view/View;)V

    invoke-virtual {p0, v1, p2}, Landroid/support/d/ah;->b(Landroid/view/View;Landroid/support/d/r;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-interface {v0, v1}, Landroid/support/d/v;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v2

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v7}, Landroid/support/d/ah;->a(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v4

    invoke-virtual {p0, v0, v7}, Landroid/support/d/ah;->b(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/d/ah;->b(Landroid/support/d/r;Landroid/support/d/r;)Landroid/support/d/ah$b;

    move-result-object v4

    iget-boolean v4, v4, Landroid/support/d/ah$b;->a:Z

    if-nez v4, :cond_a

    invoke-static {p1, v1, v0}, Landroid/support/d/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v0, v2

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/d/ah;->i:Z

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_5
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_3

    :cond_b
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    move-object v1, v2

    goto/16 :goto_3

    :cond_c
    if-ne v1, v0, :cond_d

    move-object v1, v2

    goto/16 :goto_3

    :cond_d
    iget-boolean v0, p0, Landroid/support/d/ah;->i:Z

    if-eqz v0, :cond_e

    move-object v0, v2

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v1, v0}, Landroid/support/d/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v0, v2

    goto/16 :goto_3

    :cond_f
    invoke-static {p1}, Landroid/support/d/z;->c(Landroid/view/View;)Landroid/support/d/z;

    move-result-object v0

    check-cast v0, Landroid/support/d/t;

    goto/16 :goto_4

    :cond_10
    new-instance v3, Landroid/support/d/ah$1;

    invoke-direct {v3, p0, v0, v1}, Landroid/support/d/ah$1;-><init>(Landroid/support/d/ah;Landroid/support/d/v;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    :cond_11
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v0, v6}, Landroid/support/d/ac;->a(Landroid/view/View;I)V

    invoke-virtual {p0, v0, p2}, Landroid/support/d/ah;->b(Landroid/view/View;Landroid/support/d/r;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v1, Landroid/support/d/ah$a;

    invoke-direct {v1, v0, v3}, Landroid/support/d/ah$a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_12

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    :cond_12
    invoke-virtual {p0, v1}, Landroid/support/d/ah;->a(Landroid/support/d/l$c;)Landroid/support/d/l;

    goto/16 :goto_0

    :cond_13
    invoke-static {v0, v1}, Landroid/support/d/ac;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_14
    move-object v0, v2

    goto :goto_5

    :cond_15
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_3
.end method

.method public a(Landroid/support/d/r;)V
    .locals 0

    invoke-static {p1}, Landroid/support/d/ah;->d(Landroid/support/d/r;)V

    return-void
.end method

.method public final a(Landroid/support/d/r;Landroid/support/d/r;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-static {p1, p2}, Landroid/support/d/ah;->b(Landroid/support/d/r;Landroid/support/d/r;)Landroid/support/d/ah$b;

    move-result-object v1

    iget-boolean v2, v1, Landroid/support/d/ah$b;->a:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/support/d/ah$b;->c:I

    if-eqz v2, :cond_3

    iget v1, v1, Landroid/support/d/ah$b;->d:I

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/d/ah;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/support/d/r;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/support/d/r;)V
    .locals 0

    invoke-static {p1}, Landroid/support/d/ah;->d(Landroid/support/d/r;)V

    return-void
.end method
