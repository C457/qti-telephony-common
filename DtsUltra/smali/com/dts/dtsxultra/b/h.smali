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

.field private Z:Landroid/content/res/ColorStateList;

.field private aa:Landroid/content/res/ColorStateList;

.field private ab:Landroid/view/MenuItem;

.field private ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

.field private af:[Landroid/widget/TextView;

.field private ag:[Landroid/widget/TextView;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;

.field private aj:Lcom/dts/dtsxultra/b/h$a;

.field private ak:Landroid/widget/TextView;

.field private al:I

.field private am:Landroid/content/BroadcastReceiver;


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
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    new-instance v0, Lcom/dts/dtsxultra/b/h$3;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/h$3;-><init>(Lcom/dts/dtsxultra/b/h;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->am:Landroid/content/BroadcastReceiver;

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

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f080096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f080098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f080099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const v0, 0x7f08009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x4

    const v0, 0x7f08009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x5

    const v0, 0x7f08009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x6

    const v0, 0x7f08009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/4 v4, 0x7

    const v0, 0x7f08009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/16 v4, 0x8

    const v0, 0x7f08009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    const/16 v4, 0x9

    const v0, 0x7f080097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const v0, 0x7f08007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const v0, 0x7f080080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const v0, 0x7f080081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const v0, 0x7f080082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/4 v4, 0x4

    const v0, 0x7f080083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/4 v4, 0x5

    const v0, 0x7f080084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/4 v4, 0x6

    const v0, 0x7f080085

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/4 v4, 0x7

    const v0, 0x7f080086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/16 v4, 0x8

    const v0, 0x7f080087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    const/16 v4, 0x9

    const v0, 0x7f08007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const v0, 0x7f080074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const v0, 0x7f080076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const v0, 0x7f080077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v7

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const v0, 0x7f080078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v8

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/4 v4, 0x4

    const v0, 0x7f080079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/4 v4, 0x5

    const v0, 0x7f08007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/4 v4, 0x6

    const v0, 0x7f08007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/4 v4, 0x7

    const v0, 0x7f08007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/16 v4, 0x8

    const v0, 0x7f08007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    const/16 v4, 0x9

    const v0, 0x7f080075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v4

    const v0, 0x7f08008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ah:Landroid/widget/TextView;

    const v0, 0x7f080088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ai:Landroid/widget/TextView;

    const v0, 0x7f080089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ak:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->d()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f05008d

    invoke-static {v0, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->Z:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->d()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f050049

    invoke-static {v0, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->aa:Landroid/content/res/ColorStateList;

    new-instance v0, Lcom/dts/dtsxultra/b/h$a;

    invoke-direct {v0, p0, v2}, Lcom/dts/dtsxultra/b/h$a;-><init>(Lcom/dts/dtsxultra/b/h;B)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->aj:Lcom/dts/dtsxultra/b/h$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    array-length v0, v0

    iput v0, p0, Lcom/dts/dtsxultra/b/h;->al:I

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
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v5, p0, Lcom/dts/dtsxultra/b/h;->Y:I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ah:Landroid/widget/TextView;

    const-string v3, "10"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ai:Landroid/widget/TextView;

    const-string v3, "-10"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_6

    iget-object v3, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ah:Landroid/widget/TextView;

    const-string v3, "12"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ai:Landroid/widget/TextView;

    const-string v3, "-12"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_8

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v2, v2, v0

    new-instance v3, Lcom/dts/dtsxultra/b/h$1;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/h$1;-><init>(Lcom/dts/dtsxultra/b/h;I)V

    invoke-virtual {v2, v3}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/h;)Lcom/dts/dtsxultra/b/h$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->aj:Lcom/dts/dtsxultra/b/h$a;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/dts/dtsxultra/b/h;->al:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/h;->af:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    int-to-float v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ah:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ai:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ak:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->i()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

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

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/view/MenuItem;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->aj:Lcom/dts/dtsxultra/b/h$a;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/h$a;->a([I)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/h;->R()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080021
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

.method final d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080021

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ab:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->ae:[Lcom/dts/dtsxultra/views/VerticalSeekBar;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/dts/dtsxultra/views/VerticalSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->Z:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->aa:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final s()V
    .locals 5

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->am:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0071

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/h;->R()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/h;->d(Z)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/h;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->ag:[Landroid/widget/TextView;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/h;->am:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
