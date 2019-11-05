.class public Lcom/dts/dtsxultra/b/k;
.super Lcom/dts/dtsxultra/b/g;

# interfaces
.implements Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;


# static fields
.field public static final X:Ljava/lang/String;

.field private static final Z:[F

.field private static final aa:[F

.field private static final ac:[I


# instance fields
.field Y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private aA:Landroid/content/BroadcastReceiver;

.field private final ad:Ljava/lang/Object;

.field private ae:Landroid/support/v4/app/f;

.field private af:Lcom/dts/dtssdk/e/b;

.field private ag:Landroid/media/AudioManager;

.field private ah:Lcom/dts/dtsxultra/listeningprofile/a;

.field private ai:Landroid/app/ProgressDialog;

.field private aj:Lcom/dts/dtsxultra/a/a;

.field private ak:Landroid/widget/LinearLayout;

.field private al:[Landroid/widget/TextView;

.field private am:Landroid/widget/Button;

.field private an:Landroid/widget/Button;

.field private ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

.field private ap:[F

.field private aq:[F

.field private ar:I

.field private final as:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

.field private volatile at:I

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:I

.field private az:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const-class v0, Lcom/dts/dtsxultra/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dts/dtsxultra/b/k;->Z:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dts/dtsxultra/b/k;->aa:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/dts/dtsxultra/b/k;->ac:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3e600000    # -20.0f
        -0x3e600000    # -20.0f
        -0x3e600000    # -20.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3d380000    # -100.0f
        -0x3d380000    # -100.0f
        -0x3d4c0000    # -90.0f
        -0x3d600000    # -80.0f
    .end array-data

    :array_2
    .array-data 4
        0x7f0700b5
        0x7f0700b7
        0x7f0700b8
        0x7f0700b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ap:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    new-instance v0, Lcom/dts/dtsxultra/b/k$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/k$1;-><init>(Lcom/dts/dtsxultra/b/k;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->as:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    new-instance v0, Lcom/dts/dtsxultra/b/k$2;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/k$2;-><init>(Lcom/dts/dtsxultra/b/k;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->aA:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/k$9;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/k$9;-><init>(Lcom/dts/dtsxultra/b/k;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->Y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
    .end array-data
.end method

.method static synthetic T()[F
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/k;->aa:[F

    return-object v0
.end method

.method static synthetic U()[F
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/k;->Z:[F

    return-object v0
.end method

.method private V()V
    .locals 2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private W()V
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->d()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/a;->a()Z

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/k;->e(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/k;->e(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/k;->e(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/k;->e(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private X()V
    .locals 2

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->Y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ai:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    if-nez v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->Y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ai:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private Y()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->Y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z()V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->d()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string v3, "&#8226;"

    invoke-static {v3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->ak:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->au:Z

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/k;)I
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    return v0
.end method

.method private a(ILjava/lang/Boolean;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    move-result-object v2

    sget-object v0, Lcom/dts/dtsxultra/b/k;->aa:[F

    aget v0, v0, p1

    sget-object v3, Lcom/dts/dtsxultra/b/k;->Z:[F

    aget v3, v3, p1

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    aget v4, v4, p1

    iget-object v5, p0, Lcom/dts/dtsxultra/b/k;->ap:[F

    aget v5, v5, p1

    cmpg-float v6, v0, v4

    if-gtz v6, :cond_3

    cmpg-float v6, v4, v3

    if-gtz v6, :cond_3

    iput v0, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->c:F

    iput v3, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->d:F

    iput v4, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    invoke-virtual {v2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    const-string v0, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {v2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getRotation()F

    move-result v4

    aput v4, v3, v1

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    iget-object v0, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    iget v4, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->b:F

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;->a(FFLjava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dts/dtsxultra/b/k;->ac:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p2, :cond_4

    if-nez v4, :cond_5

    :cond_4
    iget-object v0, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->au:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    if-ne v0, p1, :cond_7

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->d()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05008d

    invoke-static {v2, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, v2, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    neg-float v0, v0

    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;

    invoke-direct {v6, v2, v4, v0, v3}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;-><init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/view/ViewPropertyAnimator;FLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->al:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->d()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-static {v2, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/k;Lcom/dts/dtssdk/util/a;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "active audio route: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v2, :cond_3

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->aw:Z

    iput-boolean v1, p0, Lcom/dts/dtsxultra/b/k;->ax:Z

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    invoke-virtual {v2}, Lcom/dts/dtsxultra/a/a;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/e;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/app/e;->B:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/e;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->W()V

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is headphones connected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/k;->aw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_1

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->V()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/dts/dtsxultra/a/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-direct {v0, v1}, Lcom/dts/dtsxultra/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    new-instance v1, Lcom/dts/dtsxultra/b/k$8;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/k$8;-><init>(Lcom/dts/dtsxultra/b/k;)V

    iput-object v1, v0, Lcom/dts/dtsxultra/a/a;->a:Lcom/dts/dtsxultra/a/a$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/a/a;->show()V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->aw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->ax:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v1, "Error while pausing media player for internal speakers"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :try_start_1
    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v1, "Fragment not attached to activity, hence cannot open headphone connect dialogue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dts/dtsxultra/b/k;->av:Z

    return p1
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/k;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtssdk/e/b;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    return-object v0
.end method

.method private e(I)V
    .locals 8

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v7, 0x3

    :try_start_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->X()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v1}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v1}, Lcom/dts/dtssdk/e/b;->a()V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/listeningprofile/a;->a()Z

    :cond_0
    iget v1, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getValue()F

    move-result v1

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v4, v1}, Lcom/dts/dtssdk/e/b;->a(F)V

    :cond_1
    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/k;->aw:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/k;->ax:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v1, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-gtz p1, :cond_6

    move v1, v2

    :goto_0
    if-le v1, v0, :cond_5

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "7_12000Hz.aac"

    :goto_2
    invoke-virtual {v4}, Lcom/dts/dtssdk/e/a;->e()V

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/e/a;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->h:Ljava/nio/ByteBuffer;

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/e/a;->b(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Lcom/dts/dtssdk/e/a;->a()V

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtssdk/e/a$1;

    invoke-direct {v1, v4}, Lcom/dts/dtssdk/e/a$1;-><init>(Lcom/dts/dtssdk/e/a;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget v0, v4, Lcom/dts/dtssdk/e/a;->e:I

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/e/a;->a(I)[B

    move-result-object v0

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->f:[B

    iget v0, v4, Lcom/dts/dtssdk/e/a;->e:I

    invoke-virtual {v4, v0}, Lcom/dts/dtssdk/e/a;->a(I)[B

    move-result-object v0

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->g:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dts/dtssdk/e/a$3;

    invoke-direct {v1, v4}, Lcom/dts/dtssdk/e/a$3;-><init>(Lcom/dts/dtssdk/e/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dts/dtssdk/e/a$4;

    invoke-direct {v1, v4}, Lcom/dts/dtssdk/e/a$4;-><init>(Lcom/dts/dtssdk/e/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iput-object v0, v4, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v4, Lcom/dts/dtssdk/e/a;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    iget-object v1, v0, Lcom/dts/dtsxultra/listeningprofile/a;->a:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    monitor-exit v3

    :goto_4
    return-void

    :pswitch_0
    const-string v0, "4_2000Hz.aac"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "5_4000Hz.aac"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "6_8000Hz.aac"

    goto/16 :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/dts/dtssdk/e/a;->l:Ljava/lang/String;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v1, p1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/k;)[F
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ap:[F

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/k;)[F
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/b/k;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/dts/dtsxultra/b/k;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/dts/dtsxultra/b/k;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic j(Lcom/dts/dtsxultra/b/k;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    return-object v0
.end method

.method static synthetic k(Lcom/dts/dtsxultra/b/k;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public final R()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurrentStep mCurrentIndex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final S()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->W()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const v0, 0x7f0b003e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ai:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/f;->setVolumeControlStream(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/dts/dtsxultra/b/k;->at:I

    new-instance v0, Lcom/dts/dtsxultra/listeningprofile/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-direct {v0, v2}, Lcom/dts/dtsxultra/listeningprofile/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    const/16 v2, -0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/dts/dtsxultra/b/k$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/k$6;-><init>(Lcom/dts/dtsxultra/b/k;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const v0, 0x7f0801c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ak:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->Z()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->i()V

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dts/dtssdk/e/b;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-virtual {v2}, Landroid/support/v4/app/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dts/dtssdk/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    const v0, 0x7f08012c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0800d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    const v0, 0x7f0800d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0800d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    iput-object p0, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    move-result-object v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->as:Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;

    invoke-virtual {v0, v2}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/a;->a()Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    new-instance v2, Lcom/dts/dtsxultra/b/k$3;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/k$3;-><init>(Lcom/dts/dtsxultra/b/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    new-instance v2, Lcom/dts/dtsxultra/b/k$4;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/k$4;-><init>(Lcom/dts/dtsxultra/b/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->h()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v2, "Resetting listening test failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-static {v0, v5}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/e;->D:Z

    return-void
.end method

.method public final d(I)V
    .locals 9

    const v8, 0x7f0e00b0

    const/4 v1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget v4, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    if-le v0, v3, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/dts/dtsxultra/b/k;->a(ILjava/lang/Boolean;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ao:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "end mProfileThresholdValues "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a([F)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting listening test failed with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->d()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting listening test failed with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_3
    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->an:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->X()V

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    const/4 v5, 0x3

    iget v6, p0, Lcom/dts/dtsxultra/b/k;->at:I

    const/16 v7, 0x10

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->V()V

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->ax:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v4, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/dts/dtsxultra/b/k$7;

    invoke-direct {v4, p0}, Lcom/dts/dtsxultra/b/k$7;-><init>(Lcom/dts/dtsxultra/b/k;)V

    :try_start_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/g;->e()Landroid/support/v4/app/f;

    move-result-object v6

    const v7, 0x7f0f00c7

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v6, 0x7f0e00c7

    new-instance v7, Lcom/dts/dtsxultra/b/g$3;

    invoke-direct {v7, p0, v4}, Lcom/dts/dtsxultra/b/g$3;-><init>(Lcom/dts/dtsxultra/b/g;Lcom/dts/dtsxultra/c/b;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4 gain values "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    iget-object v5, p0, Lcom/dts/dtsxultra/b/k;->aq:[F

    invoke-static {v4, v5}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;[F)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MM, yyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v6, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->d(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "step_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->am:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/k;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtsxultra/b/k;->a(ILjava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->e(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/k;->R()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    const-string v0, "step_count"

    iget v1, p0, Lcom/dts/dtsxultra/b/k;->ay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    const v1, 0x7f0e00ae

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->setTitle(I)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->Y()Z

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dts/dtsxultra/b/k$5;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/k$5;-><init>(Lcom/dts/dtsxultra/b/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t()V
    .locals 4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/k;->V()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->aw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/k;->ax:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget v0, p0, Lcom/dts/dtsxultra/b/k;->ar:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/dts/dtsxultra/b/k;->at:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->t()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "IllegalStateException"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->az:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/a/a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->aj:Lcom/dts/dtsxultra/a/a;

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ae:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ag:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->Y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :try_start_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/k;->ad:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/k;->af:Lcom/dts/dtssdk/e/b;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k;->ah:Lcom/dts/dtsxultra/listeningprofile/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/a;->a()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->v()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
