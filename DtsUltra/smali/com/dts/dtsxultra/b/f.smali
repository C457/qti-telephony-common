.class public Lcom/dts/dtsxultra/b/f;
.super Lcom/dts/dtsxultra/b/g;


# static fields
.field private static final X:Ljava/lang/String;

.field private static final Y:[F

.field private static final Z:[F


# instance fields
.field private aa:Landroid/widget/RelativeLayout;

.field private ab:Landroid/widget/RadioButton;

.field private ae:Landroid/widget/RadioButton;

.field private af:Landroid/widget/RadioButton;

.field private ag:Landroid/widget/RadioGroup;

.field private ah:Landroid/widget/TextView;

.field private ai:Lcom/dts/dtssdk/util/a;

.field private aj:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const-class v0, Lcom/dts/dtsxultra/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/f;->X:Ljava/lang/String;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dts/dtsxultra/b/f;->Y:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dts/dtsxultra/b/f;->Z:[F

    return-void

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3d3a0000    # -99.0f
        -0x3e600000    # -20.0f
        -0x3e600000    # -20.0f
        -0x3ee00000    # -10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ai:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/f$2;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/f$2;-><init>(Lcom/dts/dtsxultra/b/f;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->aj:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/f;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic S()[F
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/f;->Y:[F

    return-object v0
.end method

.method static synthetic T()[F
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/f;->Z:[F

    return-object v0
.end method

.method private V()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->g()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtsxultra/b/f;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading listening test values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ah:Landroid/widget/TextView;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "dB "

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/f;->ah:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/e;->k(Landroid/content/Context;)[F

    move-result-object v4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->ab:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v6}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dB "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->ag:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    iget-object v5, p0, Lcom/dts/dtsxultra/b/f;->ab:Landroid/widget/RadioButton;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v6, v4, v3

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v6, v4, v2

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v6, v4, v8

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aget v4, v4, v9

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/dts/dtsxultra/b/f;->ae:Landroid/widget/RadioButton;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Y:[F

    aget v5, v5, v3

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Y:[F

    aget v5, v5, v2

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Y:[F

    aget v5, v5, v8

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Y:[F

    aget v5, v5, v9

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/dts/dtsxultra/b/f;->af:Landroid/widget/RadioButton;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Z:[F

    aget v5, v5, v3

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Z:[F

    aget v5, v5, v2

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v5, Lcom/dts/dtsxultra/b/f;->Z:[F

    aget v5, v5, v8

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/dts/dtsxultra/b/f;->Z:[F

    aget v1, v1, v9

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/f;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/f;->ai:Lcom/dts/dtssdk/util/a;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/f;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->h()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtsxultra/b/f;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset listening profile failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Reset listening profile"

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtsxultra/b/f;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;)V

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/f;->V()V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/f;->V()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/f;->i()V

    const v0, 0x7f0b002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->aa:Landroid/widget/RelativeLayout;

    const v0, 0x7f080062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ab:Landroid/widget/RadioButton;

    const v0, 0x7f08005d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ae:Landroid/widget/RadioButton;

    const v0, 0x7f08005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->af:Landroid/widget/RadioButton;

    const v0, 0x7f080063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ah:Landroid/widget/TextView;

    const v0, 0x7f08005f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ag:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->aa:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/f$1;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/f$1;-><init>(Lcom/dts/dtsxultra/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ab:Landroid/widget/RadioButton;

    new-instance v2, Lcom/dts/dtsxultra/b/f$3;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/f$3;-><init>(Lcom/dts/dtsxultra/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ae:Landroid/widget/RadioButton;

    new-instance v2, Lcom/dts/dtsxultra/b/f$4;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/f$4;-><init>(Lcom/dts/dtsxultra/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->af:Landroid/widget/RadioButton;

    new-instance v2, Lcom/dts/dtsxultra/b/f$5;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/f$5;-><init>(Lcom/dts/dtsxultra/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/f;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f0e006a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->setTitle(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->invalidateOptionsMenu()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/f$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/f$6;-><init>(Lcom/dts/dtsxultra/b/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/f;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 1

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/f;->ai:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/f;->V()V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/f;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
