.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation runtime Landroid/support/v4/h/t$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$a;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$i;,
        Landroid/support/design/widget/TabLayout$g;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$h;,
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$b;
    }
.end annotation


# static fields
.field private static final w:Landroid/support/v4/g/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/j$a",
            "<",
            "Landroid/support/design/widget/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/support/design/widget/TabLayout$e;

.field private final B:I

.field private final C:I

.field private final D:I

.field private E:I

.field private F:Landroid/support/design/widget/TabLayout$b;

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/support/design/widget/TabLayout$b;

.field private I:Landroid/animation/ValueAnimator;

.field private J:Landroid/support/v4/h/o;

.field private K:Landroid/database/DataSetObserver;

.field private L:Landroid/support/design/widget/TabLayout$g;

.field private M:Landroid/support/design/widget/TabLayout$a;

.field private N:Z

.field private final O:Landroid/support/v4/g/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/j$a",
            "<",
            "Landroid/support/design/widget/TabLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/res/ColorStateList;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:Landroid/graphics/PorterDuff$Mode;

.field k:F

.field l:F

.field final m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Z

.field t:Z

.field u:Z

.field v:Landroid/support/v4/h/t;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/support/design/widget/TabLayout$f;

.field private final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/g/j$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/g/j$c;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/g/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/design/a$b;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/g/j$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/g/j$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/g/j$a;

    invoke-virtual {p0, v6}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Landroid/support/design/widget/TabLayout$e;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$e;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v6, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/support/design/a$i;->TabLayout:[I

    sget v4, Landroid/support/design/a$h;->Widget_Design_TabLayout:I

    new-array v5, v8, [I

    sget v0, Landroid/support/design/a$i;->TabLayout_tabTextAppearance:I

    aput v0, v5, v6

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    sget v2, Landroid/support/design/a$i;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    sget v2, Landroid/support/design/a$i;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->a(I)V

    sget v1, Landroid/support/design/a$i;->TabLayout_tabIndicator:I

    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/design/a$i;->TabLayout_tabIndicatorGravity:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorGravity(I)V

    sget v1, Landroid/support/design/a$i;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setTabIndicatorFullWidth(Z)V

    sget v1, Landroid/support/design/a$i;->TabLayout_tabPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/a$h;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    iget v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    sget-object v2, Landroid/support/v7/a/a$j;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->k:F

    sget v2, Landroid/support/v7/a/a$j;->TextAppearance_android_textColor:I

    invoke-static {p1, v1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/a$i;->TabLayout_tabTextColor:I

    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/design/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/a$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    new-array v3, v9, [[I

    new-array v4, v9, [I

    sget-object v5, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v5, v3, v6

    aput v1, v4, v6

    sget-object v1, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v1, v3, v8

    aput v2, v4, v8

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    :cond_1
    sget v1, Landroid/support/design/a$i;->TabLayout_tabIconTint:I

    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$i;->TabLayout_tabIconTintMode:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/design/internal/c;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    sget v1, Landroid/support/design/a$i;->TabLayout_tabRippleColor:I

    invoke-static {p1, v0, v1}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$i;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->B:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->C:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->m:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->E:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->o:I

    sget v1, Landroid/support/design/a$i;->TabLayout_tabInlineLabel:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout;->s:Z

    sget v1, Landroid/support/design/a$i;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TabLayout;->u:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$c;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->l:F

    sget v1, Landroid/support/design/a$c;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->D:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(IF)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p0}, Landroid/support/v4/h/r;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    add-int/2addr v0, v2

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    sub-int v0, v2, v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/graphics/RectF;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$f;I)V
    .locals 3

    iput p2, p1, Landroid/support/design/widget/TabLayout$f;->e:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    iput v1, v0, Landroid/support/design/widget/TabLayout$f;->e:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/h/t;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    iget-object v2, v0, Landroid/support/v4/h/t;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/h/t;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    iget-object v2, v0, Landroid/support/v4/h/t;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v4/h/t;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    :cond_2
    if-eqz p1, :cond_8

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/design/widget/TabLayout$g;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$g;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    iput v4, v0, Landroid/support/design/widget/TabLayout$g;->b:I

    iput v4, v0, Landroid/support/design/widget/TabLayout$g;->a:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->L:Landroid/support/design/widget/TabLayout$g;

    iget-object v1, p1, Landroid/support/v4/h/t;->d:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroid/support/v4/h/t;->d:Ljava/util/List;

    :cond_4
    iget-object v1, p1, Landroid/support/v4/h/t;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/support/design/widget/TabLayout$i;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$i;-><init>(Landroid/support/v4/h/t;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    invoke-virtual {p1}, Landroid/support/v4/h/t;->getAdapter()Landroid/support/v4/h/o;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v5}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/o;Z)V

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    if-nez v0, :cond_6

    new-instance v0, Landroid/support/design/widget/TabLayout$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$a;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    iput-boolean v5, v0, Landroid/support/design/widget/TabLayout$a;->a:Z

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->M:Landroid/support/design/widget/TabLayout$a;

    iget-object v1, p1, Landroid/support/v4/h/t;->e:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroid/support/v4/h/t;->e:Ljava/util/List;

    :cond_7
    iget-object v1, p1, Landroid/support/v4/h/t;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/support/v4/h/t;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    :goto_0
    iput-boolean p2, p0, Landroid/support/design/widget/TabLayout;->N:Z

    return-void

    :cond_8
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    invoke-virtual {p0, v3, v4}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/o;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroid/support/design/widget/l;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/support/design/widget/l;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    iget-object v1, p1, Landroid/support/design/widget/l;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/design/widget/l;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/l;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/support/design/widget/l;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->b()V

    :cond_1
    iget v1, p1, Landroid/support/design/widget/l;->c:I

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/support/design/widget/l;->c:I

    iget-object v2, v0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/l;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/l;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->b()V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/support/design/widget/TabLayout$f;Z)V
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    if-eq v1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;I)V

    iget-object v0, p1, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    iget v2, p1, Landroid/support/design/widget/TabLayout$f;->e:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->a()V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v4

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v3

    if-eq v0, v3, :cond_5

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()V

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v2

    aput v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$e;->b(II)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->p:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->E:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;IIII)V

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultHeight()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->s:Z

    if-nez v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getTabMinWidth()I
    .locals 2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->B:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->D:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$e;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private setScrollPosition$4867b5c2(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v3, p1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    if-ne v3, p1, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/design/widget/TabLayout$f;
    .locals 3

    sget-object v0, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/g/j$a;

    invoke-interface {v0}, Landroid/support/v4/g/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$f;-><init>()V

    move-object v1, v0

    :goto_0
    iput-object p0, v1, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/g/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/g/j$a;

    invoke-interface {v0}, Landroid/support/v4/g/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/support/design/widget/TabLayout$h;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$f;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$h;->setFocusable(Z)V

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$h;->setMinimumWidth(I)V

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iput-object v0, v1, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v1, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(I)Landroid/support/design/widget/TabLayout$f;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    goto :goto_0
.end method

.method final a(IFZZ)V
    .locals 3

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput p1, v1, Landroid/support/design/widget/TabLayout$e;->a:I

    iput p2, v1, Landroid/support/design/widget/TabLayout$e;->b:F

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$e;->a()V

    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$f;Z)V

    return-void
.end method

.method final a(Landroid/support/design/widget/TabLayout$f;Z)V
    .locals 4

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/support/design/widget/TabLayout$f;->e:I

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_5

    iget v0, p1, Landroid/support/design/widget/TabLayout$f;->e:I

    :goto_1
    if-eqz p2, :cond_4

    if-eqz v2, :cond_3

    iget v3, v2, Landroid/support/design/widget/TabLayout$f;->e:I

    if-ne v3, v1, :cond_6

    :cond_3
    if-eq v0, v1, :cond_6

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition$4867b5c2(I)V

    :goto_2
    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    :cond_4
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    if-eqz v2, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_7

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->a(Landroid/support/design/widget/TabLayout$f;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4
.end method

.method final a(Landroid/support/v4/h/o;Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/h/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/h/o;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    iget-object v0, v0, Landroid/support/v4/h/o;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/h/o;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->K:Landroid/database/DataSetObserver;

    iget-object v1, p1, Landroid/support/v4/h/o;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v1, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()V

    return-void
.end method

.method final a(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method final b(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method final b()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TabLayout$e;->removeViewAt(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$f;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$h;->setSelected(Z)V

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->O:Landroid/support/v4/g/j$a;

    invoke-interface {v3, v0}, Landroid/support/v4/g/j$a;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$f;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->g:Landroid/support/design/widget/TabLayout;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->h:Landroid/support/design/widget/TabLayout$h;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->a:Ljava/lang/Object;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->c:Ljava/lang/CharSequence;

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->d:Ljava/lang/CharSequence;

    const/4 v3, -0x1

    iput v3, v0, Landroid/support/design/widget/TabLayout$f;->e:I

    iput-object v4, v0, Landroid/support/design/widget/TabLayout$f;->f:Landroid/view/View;

    sget-object v3, Landroid/support/design/widget/TabLayout;->w:Landroid/support/v4/g/j$a;

    invoke-interface {v3, v0}, Landroid/support/v4/g/j$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/h/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/support/v4/h/o;

    invoke-virtual {v0}, Landroid/support/v4/h/o;->a()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$f;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$f;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$f;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    invoke-virtual {v0}, Landroid/support/v4/h/t;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;Z)V

    :cond_4
    return-void
.end method

.method final b(Landroid/support/design/widget/TabLayout$f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;Z)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/TabLayout$f;

    iget v0, v0, Landroid/support/design/widget/TabLayout$f;->e:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/v4/h/t;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/h/t;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/h/t;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/t;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/h/t;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->N:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-static {v0, p1}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/design/widget/TabLayout;->C:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->C:I

    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->n:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void

    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 v3, 0x38

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInlineLabel(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->s:Z

    if-eq v0, p1, :cond_5

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->s:Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$h;->f:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->s:Z

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$h;->setOrientation(I)V

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, v0, Landroid/support/design/widget/TabLayout$h;->d:Landroid/widget/TextView;

    iget-object v4, v0, Landroid/support/design/widget/TabLayout$h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    iget-object v4, v0, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    :cond_5
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/support/design/widget/TabLayout$b;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    :cond_1
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->a(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout;->q:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout;->o:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()V

    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->t:Z

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-static {v0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout;->r:I

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()V

    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->h:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->c()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/h/o;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/o;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->u:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->u:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/TabLayout$h;->a(Landroid/support/design/widget/TabLayout$h;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/h/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/h/t;Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
