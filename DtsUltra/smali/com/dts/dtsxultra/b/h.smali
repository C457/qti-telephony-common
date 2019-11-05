.class public Lcom/dts/dtsxultra/b/h;
.super Lcom/dts/dtsxultra/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/b/h$a;
    }
.end annotation


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field private Y:I

.field private Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

.field private aa:[Landroid/widget/TextView;

.field private ac:[Landroid/widget/TextView;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Lcom/dts/dtsxultra/b/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/h;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    return-void
.end method

.method private R()V
    .locals 5

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->e()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/h;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/h;I)I
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    sub-int v0, p1, v0

    return v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const v0, 0x7f0b0032

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-array v0, v5, [Lcom/dts/dtsxultra/views/VerticalSeekBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f08008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f08008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f08008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f080090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x4

    const v0, 0x7f080091

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x5

    const v0, 0x7f080092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x6

    const v0, 0x7f080093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x7

    const v0, 0x7f080094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/16 v4, 0x8

    const v0, 0x7f080095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/16 v4, 0x9

    const v0, 0x7f08008d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const v0, 0x7f080075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const v0, 0x7f080077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const v0, 0x7f080078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const v0, 0x7f080079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/4 v4, 0x4

    const v0, 0x7f08007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/4 v4, 0x5

    const v0, 0x7f08007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/4 v4, 0x6

    const v0, 0x7f08007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/4 v4, 0x7

    const v0, 0x7f08007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/16 v4, 0x8

    const v0, 0x7f08007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    const/16 v4, 0x9

    const v0, 0x7f080076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const v0, 0x7f08006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const v0, 0x7f08006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const v0, 0x7f08006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const v0, 0x7f08006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/4 v4, 0x4

    const v0, 0x7f080070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/4 v4, 0x5

    const v0, 0x7f080071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/4 v4, 0x6

    const v0, 0x7f080072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/4 v4, 0x7

    const v0, 0x7f080073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/16 v4, 0x8

    const v0, 0x7f080074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    const/16 v4, 0x9

    const v0, 0x7f08006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    const v0, 0x7f080081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ad:Landroid/widget/TextView;

    const v0, 0x7f08007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ae:Landroid/widget/TextView;

    const v0, 0x7f080080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->af:Landroid/widget/TextView;

    new-instance v0, Lcom/dts/dtsxultra/b/h$a;

    invoke-direct {v0, p0, v2}, Lcom/dts/dtsxultra/b/h$a;-><init>(Lcom/dts/dtsxultra/b/h;B)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ag:Lcom/dts/dtsxultra/b/h$a;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/h;->d(I)V

    :cond_0
    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v5, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ad:Landroid/widget/TextView;

    const-string v3, "10"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ae:Landroid/widget/TextView;

    const-string v3, "-10"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setMax(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    const v0, 0x7f0b0031

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    const v3, 0x3f933333    # 1.15f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_3

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/h;->d(I)V

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_4

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/h;->d(I)V

    goto :goto_1

    :cond_4
    const v3, 0x3f59999a    # 0.85f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/h;->d(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xc

    iput v0, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ad:Landroid/widget/TextView;

    const-string v3, "12"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ae:Landroid/widget/TextView;

    const-string v3, "-12"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_8

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v2, v2, v0

    new-instance v3, Lcom/dts/dtsxultra/b/h$1;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/h$1;-><init>(Lcom/dts/dtsxultra/b/h;I)V

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->Z:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v2, v2, v0

    new-instance v3, Lcom/dts/dtsxultra/b/h$2;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/h$2;-><init>(Lcom/dts/dtsxultra/b/h;)V

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-object v1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/h;)[Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/h;)Lcom/dts/dtsxultra/b/h$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ag:Lcom/dts/dtsxultra/b/h$a;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ac:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->aa:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ad:Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ae:Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->af:Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/support/v4/app/f;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->i()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtsxultra/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtsxultra/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMultiWindowModeChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Re-creating GEQ screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->e()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->c(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()I

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ag:Lcom/dts/dtsxultra/b/h$a;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/h$a;->a([I)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/h;->R()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080020
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/h;->R()V

    return-void
.end method
