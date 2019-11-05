.class public Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field static final synthetic e:Z


# instance fields
.field public b:Landroid/widget/ImageView;

.field c:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

.field public d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->e:Z

    const-class v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;-><init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;-><init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;-><init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->setup(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic b(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic c(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic i(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    return-object v0
.end method


# virtual methods
.method public getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    iget-object v0, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Parent size. W:H: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-le v2, v3, :cond_2

    int-to-float v0, v3

    const v4, 0x3f147ae1    # 0.58f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :goto_0
    div-int/lit8 v4, v0, 0x7

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:I

    if-eq v0, v4, :cond_0

    iput v0, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Current margin bottom: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->g:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v7, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    if-ge v2, v3, :cond_3

    int-to-float v0, v2

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    iget v2, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->f:F

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    int-to-float v0, v0

    iput v0, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->f:F

    :cond_1
    return-void

    :cond_2
    int-to-float v0, v2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    int-to-float v0, v3

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public setup(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->m:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b:Landroid/widget/ImageView;

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->f:Landroid/widget/ImageView;

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method
