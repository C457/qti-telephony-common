.class final Landroid/support/design/widget/TabLayout$h;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/support/design/widget/TabLayout;

.field private g:Landroid/support/design/widget/TabLayout$f;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$h;->i:I

    invoke-direct {p0, p2}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/content/Context;)V

    iget v0, p1, Landroid/support/design/widget/TabLayout;->a:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->b:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->c:I

    iget v4, p1, Landroid/support/design/widget/TabLayout;->d:I

    invoke-static {p0, v0, v2, v3, v4}, Landroid/support/v4/h/r;->a(Landroid/view/View;IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->setGravity(I)V

    iget-boolean v0, p1, Landroid/support/design/widget/TabLayout;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->setOrientation(I)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$h;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/support/v4/h/p;

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/h/p;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-static {p0, v0}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/p;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/h/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/h/p;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->m:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->m:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    invoke-static {v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_5

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->u:Z

    if-eqz v5, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->u:Z

    if-eqz v5, :cond_4

    :goto_1
    invoke-direct {v3, v4, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    :cond_2
    :goto_2
    invoke-static {p0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    return-void

    :cond_3
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$h;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eqz v5, :cond_b

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->f:Landroid/view/View;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$h;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v0, 0x1020014

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/k;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$h;->i:I

    :cond_4
    const v0, 0x1020006

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Landroid/support/design/a$g;->design_layout_tab_icon:I

    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/support/design/widget/TabLayout$h;->addView(Landroid/view/View;I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    :cond_5
    if-eqz v5, :cond_e

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/design/a$g;->design_layout_tab_text:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->addView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/k;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$h;->i:I

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->e:I

    invoke-static {v0, v3}, Landroid/support/v4/widget/k;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    if-eqz v5, :cond_13

    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v4, v3

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    :cond_d
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_e
    move-object v0, v3

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_11
    iget-object v0, v5, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v3, v5, Landroid/support/design/widget/TabLayout$f;->e:I

    if-ne v0, v3, :cond_12

    move v0, v1

    :goto_4
    if-eqz v0, :cond_13

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->setSelected(Z)V

    return-void

    :cond_12
    move v0, v2

    goto :goto_4

    :cond_13
    move v0, v2

    goto :goto_5
.end method

.method final a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->a()V

    :cond_0
    return-void
.end method

.method final a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/CharSequence;

    :goto_1
    if-eqz p2, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$h;->setVisibility(I)V

    :cond_0
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    move v4, v0

    :goto_3
    if-eqz p1, :cond_1

    if-eqz v4, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$h;->setVisibility(I)V

    :cond_1
    :goto_4
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v5}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v2

    :goto_5
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->s:Z

    if-eqz v5, :cond_8

    invoke-static {v0}, Landroid/support/v4/h/g;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    if-eq v2, v5, :cond_2

    invoke-static {v0, v2}, Landroid/support/v4/h/g;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_2
    :goto_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    :goto_7
    if-eqz v4, :cond_a

    :goto_8
    invoke-static {p0, v1}, Landroid/support/v7/widget/bo;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v5, :cond_2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v0, v3}, Landroid/support/v4/h/g;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_7

    :cond_a
    move-object v1, v0

    goto :goto_8

    :cond_b
    move v2, v3

    goto :goto_5
.end method

.method protected final drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->invalidate()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v2, :cond_0

    if-le v0, v4, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->n:I

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v2, v0, Landroid/support/design/widget/TabLayout;->k:F

    iget v0, p0, Landroid/support/design/widget/TabLayout$h;->i:I

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/k;->a(Landroid/widget/TextView;)I

    move-result v6

    cmpl-float v7, v2, v4

    if-nez v7, :cond_3

    if-ltz v6, :cond_6

    if-eq v0, v6, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v6, v6, Landroid/support/design/widget/TabLayout;->r:I

    if-ne v6, v1, :cond_5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    if-ne v5, v1, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    div-float v4, v2, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->l:F

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->g:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->a()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$h;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$h;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
