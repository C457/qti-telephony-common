.class final Landroid/support/v7/widget/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static j:Landroid/support/v7/widget/bp;

.field private static k:Landroid/support/v7/widget/bp;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/CharSequence;

.field private final c:I

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroid/support/v7/widget/bq;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/bp$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bp$1;-><init>(Landroid/support/v7/widget/bp;)V

    iput-object v0, p0, Landroid/support/v7/widget/bp;->d:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/bp$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bp$2;-><init>(Landroid/support/v7/widget/bp;)V

    iput-object v0, p0, Landroid/support/v7/widget/bp;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/bp;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/s;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bp;->c:I

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private static a(Landroid/support/v7/widget/bp;)V
    .locals 4

    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    iget-object v1, v0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sput-object p0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    if-eqz p0, :cond_1

    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    iget-object v1, v0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bp;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    iget-object v0, v0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    invoke-virtual {v0}, Landroid/support/v7/widget/bp;->a()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v7/widget/bp;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/bp;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/bp;->f:I

    iput v0, p0, Landroid/support/v7/widget/bp;->g:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    if-ne v0, p0, :cond_0

    sput-object v2, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    iget-object v0, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->a()V

    iput-object v2, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    invoke-direct {p0}, Landroid/support/v7/widget/bp;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/support/v7/widget/bp;->j:Landroid/support/v7/widget/bp;

    if-ne v0, p0, :cond_1

    invoke-static {v2}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bp;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string v0, "TooltipCompatHandler"

    const-string v1, "sActiveHandler.mPopup == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final a(Z)V
    .locals 14

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->D(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bp;)V

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    invoke-virtual {v0}, Landroid/support/v7/widget/bp;->a()V

    :cond_1
    sput-object p0, Landroid/support/v7/widget/bp;->k:Landroid/support/v7/widget/bp;

    iput-boolean p1, p0, Landroid/support/v7/widget/bp;->i:Z

    new-instance v0, Landroid/support/v7/widget/bq;

    iget-object v1, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    iget-object v5, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    iget-object v6, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/widget/bp;->f:I

    iget v2, p0, Landroid/support/v7/widget/bp;->g:I

    iget-boolean v7, p0, Landroid/support/v7/widget/bp;->i:Z

    iget-object v1, p0, Landroid/support/v7/widget/bp;->b:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Landroid/support/v7/widget/bq;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/widget/bq;->a()V

    :cond_2
    iget-object v3, v5, Landroid/support/v7/widget/bq;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v5, Landroid/support/v7/widget/bq;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v1, v5, Landroid/support/v7/widget/bq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_threshold:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v3, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_5

    iget-object v0, v5, Landroid/support/v7/widget/bq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a$d;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int v0, v2, v3

    sub-int/2addr v2, v3

    move v3, v2

    move v2, v0

    :goto_2
    const/16 v0, 0x31

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v5, Landroid/support/v7/widget/bq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v7, :cond_6

    sget v0, Landroid/support/v7/a/a$d;->tooltip_y_offset_touch:I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v10, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_3

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_4

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_4
    instance-of v10, v0, Landroid/content/ContextWrapper;

    if-eqz v10, :cond_4

    instance-of v10, v0, Landroid/app/Activity;

    if-eqz v10, :cond_7

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    :cond_4
    if-nez v4, :cond_8

    const-string v0, "TooltipPopup"

    const-string v1, "Cannot find app view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, v5, Landroid/support/v7/widget/bq;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, v5, Landroid/support/v7/widget/bq;->b:Landroid/view/View;

    iget-object v2, v5, Landroid/support/v7/widget/bq;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/bp;->i:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x9c4

    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/bp;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/bp;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    goto :goto_2

    :cond_6
    sget v0, Landroid/support/v7/a/a$d;->tooltip_y_offset_non_touch:I

    goto :goto_3

    :cond_7
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-object v0, v5, Landroid/support/v7/widget/bq;->e:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, v5, Landroid/support/v7/widget/bq;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_9

    iget-object v0, v5, Landroid/support/v7/widget/bq;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_9

    iget-object v0, v5, Landroid/support/v7/widget/bq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v0, "status_bar_height"

    const-string v11, "dimen"

    const-string v12, "android"

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_7
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget-object v11, v5, Landroid/support/v7/widget/bq;->e:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v12, v0, v13, v10}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    iget-object v0, v5, Landroid/support/v7/widget/bq;->g:[I

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v5, Landroid/support/v7/widget/bq;->f:[I

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v5, Landroid/support/v7/widget/bq;->f:[I

    const/4 v6, 0x0

    aget v10, v0, v6

    iget-object v11, v5, Landroid/support/v7/widget/bq;->g:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v0, v6

    iget-object v0, v5, Landroid/support/v7/widget/bq;->f:[I

    const/4 v6, 0x1

    aget v10, v0, v6

    iget-object v11, v5, Landroid/support/v7/widget/bq;->g:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v0, v6

    iget-object v0, v5, Landroid/support/v7/widget/bq;->f:[I

    const/4 v6, 0x0

    aget v0, v0, v6

    add-int/2addr v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, v5, Landroid/support/v7/widget/bq;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, v5, Landroid/support/v7/widget/bq;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v5, Landroid/support/v7/widget/bq;->f:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v1, v3

    sub-int/2addr v1, v9

    sub-int/2addr v1, v0

    iget-object v3, v5, Landroid/support/v7/widget/bq;->f:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v2, v9

    if-eqz v7, :cond_b

    if-gez v1, :cond_c

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    add-int/2addr v0, v2

    iget-object v3, v5, Landroid/support/v7/widget/bq;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v0, v3, :cond_c

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_c
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->p(Landroid/view/View;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto/16 :goto_6

    :cond_e
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto/16 :goto_6

    :cond_f
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/bp;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/bp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bp;->h:Landroid/support/v7/widget/bq;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/bp;->f:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/bp;->c:I

    if-gt v3, v4, :cond_3

    iget v3, p0, Landroid/support/v7/widget/bp;->g:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/bp;->c:I

    if-gt v3, v4, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bp;)V

    goto :goto_0

    :cond_3
    iput v0, p0, Landroid/support/v7/widget/bp;->f:I

    iput v2, p0, Landroid/support/v7/widget/bp;->g:I

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/bp;->b()V

    invoke-virtual {p0}, Landroid/support/v7/widget/bp;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/bp;->f:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/bp;->g:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bp;->a(Z)V

    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v7/widget/bp;->a()V

    return-void
.end method
