.class public final Landroid/support/v7/widget/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ak;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/support/v7/widget/c;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$h;->abc_action_bar_up_description:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/bn;-><init>(Landroid/support/v7/widget/Toolbar;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZI)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/v7/widget/bn;->o:I

    iput v2, p0, Landroid/support/v7/widget/bn;->p:I

    iput-object p1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->l:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/bn;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/bn;->k:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroid/support/v7/a/a$j;->ActionBar:[I

    sget v5, Landroid/support/v7/a/a$a;->actionBarStyle:I

    invoke-static {v0, v3, v4, v5, v2}, Landroid/support/v7/widget/bm;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bm;

    move-result-object v4

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_10

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_title:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v1, p0, Landroid/support/v7/widget/bn;->k:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bn;->b(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_subtitle:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Landroid/support/v7/widget/bn;->l:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_logo:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bn;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_icon:I

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/bm;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bn;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bn;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bn;->q:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/widget/bn;->j:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->s()V

    :cond_4
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_displayOptions:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bn;->c(I)V

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_customNavigationLayout:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->g(II)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v5, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v0, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_6
    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bn;->c(I)V

    :cond_7
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_height:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->f(II)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_contentInsetStart:I

    invoke-virtual {v4, v0, v6}, Landroid/support/v7/widget/bm;->d(II)I

    move-result v0

    sget v1, Landroid/support/v7/a/a$j;->ActionBar_contentInsetEnd:I

    invoke-virtual {v4, v1, v6}, Landroid/support/v7/widget/bm;->d(II)I

    move-result v1

    if-gez v0, :cond_9

    if-ltz v1, :cond_a

    :cond_9
    iget-object v5, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->f()V

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->n:Landroid/support/v7/widget/bd;

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/bd;->a(II)V

    :cond_a
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_titleTextStyle:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->g(II)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->k:I

    iget-object v6, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_b
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->g(II)I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v5, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->l:I

    iget-object v6, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_c
    sget v0, Landroid/support/v7/a/a$j;->ActionBar_popupTheme:I

    invoke-virtual {v4, v0, v2}, Landroid/support/v7/widget/bm;->g(II)I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    :cond_d
    :goto_1
    iget-object v0, v4, Landroid/support/v7/widget/bm;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/support/v7/widget/bn;->p:I

    if-eq p3, v0, :cond_e

    iput p3, p0, Landroid/support/v7/widget/bn;->p:I

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/bn;->p:I

    if-nez v0, :cond_12

    move-object v0, v3

    :goto_2
    iput-object v0, p0, Landroid/support/v7/widget/bn;->m:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->t()V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bn;->m:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/widget/bn$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bn$1;-><init>(Landroid/support/v7/widget/bn;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v0, 0xf

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/bn;->q:Landroid/graphics/drawable/Drawable;

    :cond_11
    iput v0, p0, Landroid/support/v7/widget/bn;->e:I

    goto :goto_1

    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bn;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->r()V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/bn;->b:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->i:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bn;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bn;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private s()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/bn;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->j:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bn;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private t()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/bn;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IJ)Landroid/support/v4/h/v;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/h/r;->m(Landroid/view/View;)Landroid/support/v4/h/v;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/h/v;->a(F)Landroid/support/v4/h/v;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/h/v;->a(J)Landroid/support/v4/h/v;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/bn$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/bn$2;-><init>(Landroid/support/v7/widget/bn;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/h/v;->a(Landroid/support/v4/h/w;)Landroid/support/v4/h/v;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bn;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bn;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->r()V

    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iput-object p1, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/view/menu/o$a;

    iput-object p2, v0, Landroid/support/v7/widget/Toolbar;->t:Landroid/support/v7/view/menu/h$a;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bf;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bn;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/bn;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->width:I

    iput v3, v0, Landroid/support/v7/widget/Toolbar$b;->height:I

    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bf;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->n:Landroid/support/v7/widget/c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/c;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/bn;->n:Landroid/support/v7/widget/c;

    iget-object v0, p0, Landroid/support/v7/widget/bn;->n:Landroid/support/v7/widget/c;

    sget v1, Landroid/support/v7/a/a$f;->action_menu_presenter:I

    iput v1, v0, Landroid/support/v7/view/menu/b;->h:I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bn;->n:Landroid/support/v7/widget/c;

    iput-object p2, v0, Landroid/support/v7/view/menu/b;->f:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->n:Landroid/support/v7/widget/c;

    if-nez p1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()V

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/h;

    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->q:Landroid/support/v7/widget/c;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    if-nez v2, :cond_3

    new-instance v2, Landroid/support/v7/widget/Toolbar$a;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/Toolbar$a;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    :cond_3
    iput-boolean v4, v1, Landroid/support/v7/widget/c;->l:Z

    if-eqz p1, :cond_5

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->j:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/c;)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->q:Landroid/support/v7/widget/c;

    :cond_4
    return-void

    :cond_5
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Landroid/support/v7/widget/c;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/support/v7/widget/Toolbar$a;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/c;->b(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/Toolbar$a;->b(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bn;->c:Landroid/view/Window$Callback;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bn;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bn;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bn;->b(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroid/support/v7/widget/bn;->e:I

    if-eqz v0, :cond_4

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->t()V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/bn;->s()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/bn;->r()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/bn;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/bn;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/bn;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->r:Landroid/support/v7/widget/Toolbar$a;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, v2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_3

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/c;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/c;

    iget-object v3, v2, Landroid/support/v7/widget/c;->o:Landroid/support/v7/widget/c$c;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/c;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, v2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/c;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/support/v7/widget/c;

    invoke-virtual {v2}, Landroid/support/v7/widget/c;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bn;->d:Z

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->b()V

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bn;->e:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bn;->o:I

    return v0
.end method

.method public final q()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
