.class Landroid/support/v7/c/a/b;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/c/a/b$a;,
        Landroid/support/v7/c/a/b$b;
    }
.end annotation


# instance fields
.field a:Landroid/support/v7/c/a/b$b;

.field b:I

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Landroid/support/v7/c/a/b$a;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v7/c/a/b;->f:I

    iput v1, p0, Landroid/support/v7/c/a/b;->b:I

    iput v1, p0, Landroid/support/v7/c/a/b;->h:I

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .locals 1

    if-nez p0, :cond_1

    move v0, p1

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0xa0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/c/a/b;->m:Landroid/support/v7/c/a/b$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/c/a/b$a;

    invoke-direct {v0}, Landroid/support/v7/c/a/b$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/c/a/b;->m:Landroid/support/v7/c/a/b$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->m:Landroid/support/v7/c/a/b$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/c/a/b$a;->a:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v0, v0, Landroid/support/v7/c/a/b$b;->C:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/c/a/b;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/c/a/b;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->G:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->E:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    if-eqz v0, :cond_5

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Landroid/support/v7/c/a/b;->m:Landroid/support/v7/c/a/b$a;

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :cond_6
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->J:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->H:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->K:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/c/a/b;->m:Landroid/support/v7/c/a/b$a;

    invoke-virtual {v1}, Landroid/support/v7/c/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method


# virtual methods
.method protected a(Landroid/support/v7/c/a/b$b;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v0, p0, Landroid/support/v7/c/a/b;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/c/a/b;->b:I

    invoke-virtual {p1, v0}, Landroid/support/v7/c/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/c/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/c/a/b;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method final a(Z)V
    .locals 12

    const-wide/16 v10, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    iput-boolean v1, p0, Landroid/support/v7/c/a/b;->g:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-wide v6, p0, Landroid/support/v7/c/a/b;->k:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    iget-wide v6, p0, Landroid/support/v7/c/a/b;->k:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/c/a/b;->f:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iput-wide v8, p0, Landroid/support/v7/c/a/b;->k:J

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-wide v6, p0, Landroid/support/v7/c/a/b;->l:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    iget-wide v6, p0, Landroid/support/v7/c/a/b;->l:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_6

    iget-object v1, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/c/a/b;->h:I

    :cond_2
    iput-wide v8, p0, Landroid/support/v7/c/a/b;->l:J

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/c/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/c/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_4
    return-void

    :cond_5
    iget-wide v6, p0, Landroid/support/v7/c/a/b;->k:J

    sub-long/2addr v6, v4

    mul-long/2addr v6, v10

    long-to-int v0, v6

    iget-object v3, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v3, v3, Landroid/support/v7/c/a/b$b;->C:I

    div-int/2addr v0, v3

    iget-object v3, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    rsub-int v0, v0, 0xff

    iget v6, p0, Landroid/support/v7/c/a/b;->f:I

    mul-int/2addr v0, v6

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Landroid/support/v7/c/a/b;->l:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v10

    long-to-int v0, v2

    iget-object v2, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v2, v2, Landroid/support/v7/c/a/b$b;->D:I

    div-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/c/a/b;->f:I

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v1

    goto :goto_1
.end method

.method final a(I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/v7/c/a/b;->b:I

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v4, v4, Landroid/support/v7/c/a/b$b;->D:I

    if-lez v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/v7/c/a/b;->b:I

    iput v0, p0, Landroid/support/v7/c/a/b;->h:I

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v0, v0, Landroid/support/v7/c/a/b$b;->D:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/support/v7/c/a/b;->l:J

    :cond_2
    :goto_1
    if-ltz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v0, v0, Landroid/support/v7/c/a/b$b;->j:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/c/a/b;->b:I

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v4, v4, Landroid/support/v7/c/a/b$b;->C:I

    if-lez v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v4, v4, Landroid/support/v7/c/a/b$b;->C:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/c/a/b;->k:J

    :cond_3
    invoke-direct {p0, v0}, Landroid/support/v7/c/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    iget-wide v2, p0, Landroid/support/v7/c/a/b;->k:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    iget-wide v2, p0, Landroid/support/v7/c/a/b;->l:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/support/v7/c/a/b;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    new-instance v0, Landroid/support/v7/c/a/b$1;

    invoke-direct {v0, p0}, Landroid/support/v7/c/a/b$1;-><init>(Landroid/support/v7/c/a/b;)V

    iput-object v0, p0, Landroid/support/v7/c/a/b;->j:Ljava/lang/Runnable;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/c/a/b;->a(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->invalidateSelf()V

    move v0, v1

    goto :goto_0

    :cond_7
    iput-object v9, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    iput v8, p0, Landroid/support/v7/c/a/b;->h:I

    iput-wide v6, p0, Landroid/support/v7/c/a/b;->l:J

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    :cond_9
    iput-object v9, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iput v8, p0, Landroid/support/v7/c/a/b;->b:I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Landroid/support/v7/c/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 6

    iget-object v1, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/c/a/b$b;->c()V

    iget v2, v1, Landroid/support/v7/c/a/b$b;->j:I

    iget-object v3, v1, Landroid/support/v7/c/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v4, v1, Landroid/support/v7/c/a/b$b;->g:I

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v1, Landroid/support/v7/c/a/b$b;->g:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/c/a/b$b;->a(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method b()Landroid/support/v7/c/a/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    return-object v0
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/v7/c/a/b;->f:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v1}, Landroid/support/v7/c/a/b$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v7/c/a/b$b;->f:I

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v0, Landroid/support/v7/c/a/b$b;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->d()V

    :cond_0
    iget v0, v0, Landroid/support/v7/c/a/b$b;->q:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v0, Landroid/support/v7/c/a/b$b;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->d()V

    :cond_0
    iget v0, v0, Landroid/support/v7/c/a/b$b;->p:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v0, Landroid/support/v7/c/a/b$b;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->d()V

    :cond_0
    iget v0, v0, Landroid/support/v7/c/a/b$b;->s:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v0, Landroid/support/v7/c/a/b$b;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->d()V

    :cond_0
    iget v0, v0, Landroid/support/v7/c/a/b$b;->r:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 7

    const/4 v2, 0x1

    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v4, Landroid/support/v7/c/a/b$b;->t:Z

    if-eqz v1, :cond_2

    iget v0, v4, Landroid/support/v7/c/a/b$b;->u:I

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/c/a/b$b;->c()V

    iget v5, v4, Landroid/support/v7/c/a/b$b;->j:I

    iget-object v6, v4, Landroid/support/v7/c/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    if-lez v5, :cond_3

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :cond_3
    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v3, v6, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_4
    iput v0, v4, Landroid/support/v7/c/a/b$b;->u:I

    iput-boolean v2, v4, Landroid/support/v7/c/a/b$b;->t:Z

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v3, v4, Landroid/support/v7/c/a/b$b;->k:Z

    if-eqz v3, :cond_1

    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v3

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->isAutoMirrored()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_d

    :goto_2
    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return v0

    :cond_1
    iget-object v3, v4, Landroid/support/v7/c/a/b$b;->m:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    iget-boolean v3, v4, Landroid/support/v7/c/a/b$b;->l:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, v4, Landroid/support/v7/c/a/b$b;->m:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/c/a/b$b;->c()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget v6, v4, Landroid/support/v7/c/a/b$b;->j:I

    iget-object v7, v4, Landroid/support/v7/c/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_9

    aget-object v8, v7, v3

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_4
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    if-le v8, v9, :cond_5

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iput v8, v0, Landroid/graphics/Rect;->left:I

    :cond_5
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_6

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iput v8, v0, Landroid/graphics/Rect;->top:I

    :cond_6
    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_7

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iput v8, v0, Landroid/graphics/Rect;->right:I

    :cond_7
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    iput-boolean v1, v4, Landroid/support/v7/c/a/b$b;->l:Z

    iput-object v0, v4, Landroid/support/v7/c/a/b$b;->m:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_1

    :cond_c
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_2
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->E:Z

    return v0
.end method

.method public isStateful()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v2, v3, Landroid/support/v7/c/a/b$b;->v:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v3, Landroid/support/v7/c/a/b$b;->w:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/c/a/b$b;->c()V

    iget v4, v3, Landroid/support/v7/c/a/b$b;->j:I

    iget-object v5, v3, Landroid/support/v7/c/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    :cond_1
    iput-boolean v0, v3, Landroid/support/v7/c/a/b$b;->w:Z

    iput-boolean v1, v3, Landroid/support/v7/c/a/b$b;->v:Z

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public jumpToCurrentState()V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/c/a/b;->h:I

    move v0, v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Landroid/support/v7/c/a/b;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/c/a/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-wide v2, p0, Landroid/support/v7/c/a/b;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iput-wide v4, p0, Landroid/support/v7/c/a/b;->l:J

    move v0, v1

    :cond_2
    iget-wide v2, p0, Landroid/support/v7/c/a/b;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iput-wide v4, p0, Landroid/support/v7/c/a/b;->k:J

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->invalidateSelf()V

    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/c/a/b;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->b()Landroid/support/v7/c/a/b$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/c/a/b$b;->a()V

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/b;->a(Landroid/support/v7/c/a/b$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/c/a/b;->i:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 9

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget v5, p0, Landroid/support/v7/c/a/b;->b:I

    iget v6, v4, Landroid/support/v7/c/a/b$b;->j:I

    iget-object v7, v4, Landroid/support/v7/c/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v0, v7, v3

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v0, v8, :cond_2

    aget-object v0, v7, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    :goto_1
    if-ne v3, v5, :cond_1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput p1, v4, Landroid/support/v7/c/a/b$b;->B:I

    return v1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v7/c/a/b;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/c/a/b;->f:I

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/c/a/b;->g:Z

    iput p1, p0, Landroid/support/v7/c/a/b;->f:I

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/support/v7/c/a/b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/b;->a(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->E:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iput-boolean p1, v0, Landroid/support/v7/c/a/b$b;->E:Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v1, Landroid/support/v7/c/a/b$b;->E:Z

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/c/a/b$b;->G:Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->F:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iput-object p1, v0, Landroid/support/v7/c/a/b$b;->F:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v0, v0, Landroid/support/v7/c/a/b$b;->z:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iput-boolean p1, v0, Landroid/support/v7/c/a/b$b;->z:Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-boolean v1, v1, Landroid/support/v7/c/a/b$b;->z:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/c/a/b;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/c/a/b$b;->J:Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iput-object p1, v0, Landroid/support/v7/c/a/b$b;->H:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/c/a/b$b;->K:Z

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iget-object v0, v0, Landroid/support/v7/c/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    iput-object p1, v0, Landroid/support/v7/c/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/c/a/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/c/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/c/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
