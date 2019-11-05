.class public final Landroid/support/v7/widget/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Landroid/support/v7/widget/bk;

.field private c:Landroid/support/v7/widget/bk;

.field private d:Landroid/support/v7/widget/bk;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/am;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0}, Landroid/support/v7/widget/bk;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    iput-object p1, v0, Landroid/support/v7/widget/bk;->a:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bk;->d:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()V

    return-void
.end method

.method final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0}, Landroid/support/v7/widget/bk;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    iput-object p1, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bk;->c:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/p;->d()V

    return-void
.end method

.method public final a(Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x15

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/a/a$j;->AppCompatImageView:[I

    invoke-static {v0, p1, v3, p2, v2}, Landroid/support/v7/widget/bm;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bm;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    sget v3, Landroid/support/v7/a/a$j;->AppCompatImageView_srcCompat:I

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/widget/bm;->g(II)I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v7/widget/am;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->AppCompatImageView_tint:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    sget v3, Landroid/support/v7/a/a$j;->AppCompatImageView_tint:I

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/bm;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    sget v0, Landroid/support/v7/a/a$j;->AppCompatImageView_tintMode:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->f(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    sget v3, Landroid/support/v7/a/a$j;->AppCompatImageView_tintMode:I

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/widget/bm;->a(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/support/v7/widget/am;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v3, v6, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_8

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    iget-object v0, v4, Landroid/support/v7/widget/bm;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    move v3, v2

    goto :goto_0

    :cond_7
    :try_start_1
    instance-of v5, v0, Landroid/support/v4/widget/m;

    if-eqz v5, :cond_3

    check-cast v0, Landroid/support/v4/widget/m;

    invoke-interface {v0, v3}, Landroid/support/v4/widget/m;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v4, Landroid/support/v7/widget/bm;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    :try_start_2
    instance-of v1, v0, Landroid/support/v4/widget/m;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/support/v4/widget/m;

    invoke-interface {v0, v3}, Landroid/support/v4/widget/m;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method final a()Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v7, 0x15

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/support/v7/widget/am;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v4, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/bk;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0}, Landroid/support/v7/widget/bk;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/bk;

    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/p;->d:Landroid/support/v7/widget/bk;

    invoke-virtual {v5}, Landroid/support/v7/widget/bk;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iput-boolean v2, v5, Landroid/support/v7/widget/bk;->d:Z

    iput-object v0, v5, Landroid/support/v7/widget/bk;->a:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    iput-boolean v2, v5, Landroid/support/v7/widget/bk;->c:Z

    iput-object v0, v5, Landroid/support/v7/widget/bk;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    iget-boolean v0, v5, Landroid/support/v7/widget/bk;->d:Z

    if-nez v0, :cond_4

    iget-boolean v0, v5, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_d

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bk;[I)V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_e

    :cond_5
    :goto_4
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    if-ne v0, v7, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    instance-of v6, v0, Landroid/support/v4/widget/m;

    if-eqz v6, :cond_a

    check-cast v0, Landroid/support/v4/widget/m;

    invoke-interface {v0}, Landroid/support/v4/widget/m;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    :cond_a
    move-object v0, v3

    goto :goto_1

    :cond_b
    instance-of v6, v0, Landroid/support/v4/widget/m;

    if-eqz v6, :cond_c

    check-cast v0, Landroid/support/v4/widget/m;

    invoke-interface {v0}, Landroid/support/v4/widget/m;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_2

    :cond_c
    move-object v0, v3

    goto :goto_2

    :cond_d
    move v0, v1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/p;->c:Landroid/support/v7/widget/bk;

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bk;[I)V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bk;

    iget-object v1, p0, Landroid/support/v7/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bk;[I)V

    goto :goto_4
.end method
