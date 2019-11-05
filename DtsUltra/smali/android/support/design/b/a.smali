.class public final Landroid/support/design/b/a;
.super Landroid/support/v7/widget/h;


# instance fields
.field private final b:Landroid/support/design/b/c;

.field private c:I

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/design/a$b;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Landroid/support/design/a$i;->MaterialButton:[I

    sget v4, Landroid/support/design/a$h;->Widget_MaterialComponents_Button:I

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroid/support/design/a$i;->MaterialButton_iconPadding:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/b/a;->c:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/design/internal/c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/a$i;->MaterialButton_iconTint:I

    invoke-static {v0, v1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/a;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/a$i;->MaterialButton_icon:I

    invoke-static {v0, v1, v2}, Landroid/support/design/e/a;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    sget v0, Landroid/support/design/a$i;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/b/a;->i:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_iconSize:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/b/a;->g:I

    new-instance v0, Landroid/support/design/b/c;

    invoke-direct {v0, p0}, Landroid/support/design/b/c;-><init>(Landroid/support/design/b/a;)V

    iput-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v2, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    sget v0, Landroid/support/design/a$i;->MaterialButton_android_insetLeft:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->c:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_android_insetRight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->d:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_android_insetTop:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->e:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_android_insetBottom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->f:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_cornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->g:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_strokeWidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Landroid/support/design/b/c;->h:I

    sget v0, Landroid/support/design/a$i;->MaterialButton_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Landroid/support/design/internal/c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$i;->MaterialButton_backgroundTint:I

    invoke-static {v0, v1, v3}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$i;->MaterialButton_strokeColor:I

    invoke-static {v0, v1, v3}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$i;->MaterialButton_rippleColor:I

    invoke-static {v0, v1, v3}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    iget-object v0, v2, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v2, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    iget v3, v2, Landroid/support/design/b/c;->h:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v2, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    iget-object v0, v2, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    iget-object v4, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v4}, Landroid/support/design/b/a;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-static {v0}, Landroid/support/v4/h/r;->i(Landroid/view/View;)I

    move-result v3

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getPaddingTop()I

    move-result v4

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-static {v0}, Landroid/support/v4/h/r;->j(Landroid/view/View;)I

    move-result v5

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getPaddingBottom()I

    move-result v6

    iget-object v7, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/support/design/b/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v7, v0}, Landroid/support/design/b/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget v7, v2, Landroid/support/design/b/c;->c:I

    add-int/2addr v3, v7

    iget v7, v2, Landroid/support/design/b/c;->e:I

    add-int/2addr v4, v7

    iget v7, v2, Landroid/support/design/b/c;->d:I

    add-int/2addr v5, v7

    iget v2, v2, Landroid/support/design/b/c;->f:I

    add-int/2addr v2, v6

    invoke-static {v0, v3, v4, v5, v2}, Landroid/support/v4/h/r;->a(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/support/design/b/a;->c:I

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setCompoundDrawablePadding(I)V

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    iget v8, v2, Landroid/support/design/b/c;->g:I

    int-to-float v8, v8

    const v9, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v8, v9

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, v2, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v8, v2, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v8}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, v2, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v8, v2, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v8}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v8, v2, Landroid/support/design/b/c;->g:I

    int-to-float v8, v8

    const v9, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v8, v9

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    iget-object v0, v2, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    iget-object v8, v2, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    invoke-static {v0, v8}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget-object v10, v2, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v2, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    invoke-direct {v0, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/support/design/b/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/a;->e:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Landroid/support/design/b/a;->g:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/b/a;->g:I

    :goto_0
    iget v1, p0, Landroid/support/design/b/a;->g:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/design/b/a;->g:I

    :goto_1
    iget-object v2, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/b/a;->h:I

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/design/b/a;->h:I

    add-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroid/support/v4/widget/k;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-boolean v0, v0, Landroid/support/design/b/c;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/b/a;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/b/a;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getCornerRadius()I
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget v0, v0, Landroid/support/design/b/c;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIconGravity()I
    .locals 1

    iget v0, p0, Landroid/support/design/b/a;->i:I

    return v0
.end method

.method public final getIconPadding()I
    .locals 1

    iget v0, p0, Landroid/support/design/b/a;->c:I

    return v0
.end method

.method public final getIconSize()I
    .locals 1

    iget v0, p0, Landroid/support/design/b/a;->g:I

    return v0
.end method

.method public final getIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v0, v0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v0, v0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStrokeWidth()I
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget v0, v0, Landroid/support/design/b/c;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v0, v0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/h;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v0, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/h;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->onDraw(Landroid/graphics/Canvas;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    if-eqz p1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/support/design/b/c;->h:I

    if-lez v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v2}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/support/design/b/c;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    iget v3, v0, Landroid/support/design/b/c;->c:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/support/design/b/c;->h:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, v0, Landroid/support/design/b/c;->e:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroid/support/design/b/c;->h:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/support/design/b/c;->d:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, v0, Landroid/support/design/b/c;->h:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v0, Landroid/support/design/b/c;->f:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    iget v2, v0, Landroid/support/design/b/c;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget-object v2, v0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    iget-object v0, v0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/h;->onLayout(ZIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    iget-object v3, v0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v4, v0, Landroid/support/design/b/c;->c:I

    iget v5, v0, Landroid/support/design/b/c;->e:I

    iget v6, v0, Landroid/support/design/b/c;->d:I

    sub-int/2addr v2, v6

    iget v0, v0, Landroid/support/design/b/c;->f:I

    sub-int v0, v1, v0

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/h;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/b/a;->i:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/b/a;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    iget v0, p0, Landroid/support/design/b/a;->g:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/b/a;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v2

    invoke-static {p0}, Landroid/support/v4/h/r;->j(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    iget v2, p0, Landroid/support/design/b/a;->c:I

    sub-int/2addr v0, v2

    invoke-static {p0}, Landroid/support/v4/h/r;->i(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Landroid/support/v4/h/r;->g(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_4

    :goto_2
    if-eqz v1, :cond_2

    neg-int v0, v0

    :cond_2
    iget v1, p0, Landroid/support/design/b/a;->h:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/support/design/b/a;->h:I

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/design/b/a;->g:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/b/c;->w:Z

    iget-object v1, v0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget-object v2, v0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/support/design/b/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget-object v0, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Landroid/support/design/b/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setCornerRadius(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const v4, 0x3727c5ac    # 1.0E-5f

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget v0, v2, Landroid/support/design/b/c;->g:I

    if-eq v0, p1, :cond_1

    iput p1, v2, Landroid/support/design/b/c;->g:I

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    :goto_0
    int-to-float v3, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    :goto_1
    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    iget-object v0, v2, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_1

    iget-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, v2, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->invalidate()V

    goto :goto_2
.end method

.method public final setCornerRadiusResource(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/b/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    :cond_0
    return-void
.end method

.method public final setIconGravity(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/b/a;->i:I

    return-void
.end method

.method public final setIconPadding(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/b/a;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/b/a;->c:I

    invoke-virtual {p0, p1}, Landroid/support/design/b/a;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public final setIconResource(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIconSize(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iconSize cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/design/b/a;->g:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/design/b/a;->g:I

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    :cond_1
    return-void
.end method

.method public final setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/b/a;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    :cond_0
    return-void
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/b/a;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/b/a;->a()V

    :cond_0
    return-void
.end method

.method public final setIconTintResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method final setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v1, v0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v1}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setRippleColorResource(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v2, v1, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eq v2, p1, :cond_1

    iput-object p1, v1, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget-object v3, v1, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v3}, Landroid/support/design/b/a;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/support/design/b/c;->c()V

    :cond_1
    return-void
.end method

.method public final setStrokeColorResource(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setStrokeWidth(I)V
    .locals 3

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget v1, v0, Landroid/support/design/b/c;->h:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/support/design/b/c;->h:I

    iget-object v1, v0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Landroid/support/design/b/c;->c()V

    :cond_0
    return-void
.end method

.method public final setStrokeWidthResource(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/b/a;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v1, v0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/design/b/c;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    iget-object v1, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    sget-boolean v1, Landroid/support/design/b/c;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/design/b/c;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/b/a;->b:Landroid/support/design/b/c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/h;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
