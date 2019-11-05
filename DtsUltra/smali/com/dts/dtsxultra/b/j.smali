.class public Lcom/dts/dtsxultra/b/j;
.super Lcom/dts/dtsxultra/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/b/j$a;
    }
.end annotation


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field private Y:Landroid/support/v4/app/f;

.field private Z:Landroid/widget/TextView;

.field private aA:Landroid/widget/SeekBar;

.field private aB:Landroid/widget/SeekBar;

.field private aC:Landroid/widget/SeekBar;

.field private aD:Landroid/widget/Switch;

.field private aE:Lcom/dts/dtssdk/f/a;

.field private aF:Lcom/dts/dtssdk/f/a;

.field private aG:Lcom/dts/dtssdk/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Lcom/dts/dtssdk/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Lcom/dts/dtssdk/a/f;

.field private aJ:I

.field private aK:Lcom/dts/dtsxultra/b/j$a;

.field private aL:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/widget/TextView;

.field private ac:Landroid/widget/TextView;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/Switch;

.field private an:Landroid/widget/ProgressBar;

.field private ao:Lcom/dts/dtssdk/a/j;

.field private ap:Lcom/dts/dtssdk/util/a;

.field private aq:Landroid/widget/RelativeLayout;

.field private ar:Landroid/widget/RelativeLayout;

.field private as:Landroid/widget/RelativeLayout;

.field private at:Landroid/widget/RelativeLayout;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Landroid/widget/RelativeLayout;

.field private aw:Lcom/dts/dtsxultra/b/m$a;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dts/dtsxultra/b/j;->aJ:I

    new-instance v0, Lcom/dts/dtsxultra/b/j$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/j$1;-><init>(Lcom/dts/dtsxultra/b/j;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aL:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    return-object v0
.end method

.method private S()V
    .locals 4

    const v3, 0x7f050045

    const v2, 0x7f050080

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aE:Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aE:Lcom/dts/dtssdk/f/a;

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aE:Lcom/dts/dtssdk/f/a;

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aG:Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aG:Lcom/dts/dtssdk/f/a;

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aG:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    sget-object v1, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aG:Lcom/dts/dtssdk/f/a;

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->e()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aH:Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aH:Lcom/dts/dtssdk/f/a;

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aH:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aH:Lcom/dts/dtssdk/f/a;

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aF:Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aF:Lcom/dts/dtssdk/f/a;

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aF:Lcom/dts/dtssdk/f/a;

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    new-instance v1, Lcom/dts/dtsxultra/b/j$5;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$5;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-static {v0, v1}, Lcom/dts/dtssdk/a/e;->b(Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method private T()V
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUiSdkVersion(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getDtsSdkStatus"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getDtsServiceStatus"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getDtsLicenseExists"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "DTS_EAGLE_PLATFORM_SUPPORT"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AudioManager.getParameters(DTS_EAGLE_PLATFORM_SUPPORT): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getDtsEnabled()"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getStereoPreference()"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getGEQEnabled()"

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(I)Lcom/dts/dtssdk/f/a;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGEQGain("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->e()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getAllGEQGains()="

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->g()Lcom/dts/dtssdk/f/a;

    move-result-object v4

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getListeningTest ("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v4, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getContentModeOnSpeakerUuid()"

    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getAccessoryUuid(USB)"

    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getAccessoryUuid(BLUETOOTH)"

    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    const-string v1, "getAccessoryUuid(LINE_OUT)"

    iget-object v2, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->af:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f;->b()Ljava/util/List;

    move-result-object v0

    const-string v2, "> License Tokens:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> Customer Config:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ah:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/a/f;)Lcom/dts/dtssdk/a/f;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j;->aI:Lcom/dts/dtssdk/a/f;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aE:Lcom/dts/dtssdk/f/a;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dts/dtsxultra/b/j;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->d(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting loudness leveling control failed with: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aD:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aD:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aG:Lcom/dts/dtssdk/f/a;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aH:Lcom/dts/dtssdk/f/a;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aF:Lcom/dts/dtssdk/f/a;

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aI:Lcom/dts/dtssdk/a/f;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/j;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->an:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/b/j;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    return-object v0
.end method

.method static synthetic h(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/j;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    return-object v0
.end method

.method static synthetic i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->am:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic j(Lcom/dts/dtsxultra/b/j;)I
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/b/j;->aJ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/j;->aJ:I

    return v0
.end method

.method static synthetic k(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/util/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    return-object v0
.end method

.method static synthetic l(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtsxultra/b/m$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aw:Lcom/dts/dtsxultra/b/m$a;

    return-object v0
.end method

.method static synthetic m(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aD:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic n(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/j;->S()V

    return-void
.end method

.method static synthetic o(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/j;->T()V

    return-void
.end method

.method static synthetic p(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ai:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ak:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->al:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ae:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->az:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/dts/dtsxultra/b/j;)V
    .locals 5

    const v4, 0x7f0e003d

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->az:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aC:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ay:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aA:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->e(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->ax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aB:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting dialog level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->az:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting treble level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/dts/dtsxultra/b/j;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting bass level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ax:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e008c

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->af:Landroid/widget/TextView;

    const v0, 0x7f080100

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    const v0, 0x7f0800f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    const v0, 0x7f0800fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/widget/TextView;

    const v0, 0x7f0800fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    const v0, 0x7f0800fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ae:Landroid/widget/TextView;

    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ag:Landroid/widget/TextView;

    const v0, 0x7f080101

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ah:Landroid/widget/TextView;

    const v0, 0x7f080105

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ai:Landroid/widget/TextView;

    const v0, 0x7f080106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aj:Landroid/widget/TextView;

    const v0, 0x7f080103

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ak:Landroid/widget/TextView;

    const v0, 0x7f080104

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->al:Landroid/widget/TextView;

    const v0, 0x7f0800f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aq:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->as:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->at:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->au:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->av:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->am:Landroid/widget/Switch;

    const v0, 0x7f080178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aD:Landroid/widget/Switch;

    const v0, 0x7f0800ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->an:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080031

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ax:Landroid/widget/TextView;

    const v0, 0x7f08002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aB:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aB:Landroid/widget/SeekBar;

    new-instance v2, Lcom/dts/dtsxultra/b/j$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$6;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->az:Landroid/widget/TextView;

    const v0, 0x7f08002e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aC:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aC:Landroid/widget/SeekBar;

    new-instance v2, Lcom/dts/dtsxultra/b/j$7;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$7;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_2
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ay:Landroid/widget/TextView;

    const v0, 0x7f080035

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aA:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aA:Landroid/widget/SeekBar;

    new-instance v2, Lcom/dts/dtsxultra/b/j$8;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$8;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aq:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$10;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$10;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ar:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$11;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$11;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->as:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$12;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$12;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->at:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$13;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$13;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->au:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$14;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$14;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->av:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/j$15;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$15;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->an:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/dts/dtsxultra/b/m$a;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/m$a;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->aw:Lcom/dts/dtsxultra/b/m$a;

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f080030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f080032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    const v0, 0x7f080033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 12

    const/4 v7, 0x1

    const v3, 0x7f05002f

    const/4 v11, 0x0

    const v2, 0x7f0e00b2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const-string v1, "Refreshing integration and API test results"

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ae:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aa:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->ae:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dts/dtsxultra/b/j$3;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$3;-><init>(Lcom/dts/dtsxultra/b/j;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v7

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const-string v1, "Exporting test result to file"

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    iget-object v5, p0, Lcom/dts/dtsxultra/b/j;->ao:Lcom/dts/dtssdk/a/j;

    new-instance v6, Lcom/dts/dtsxultra/b/j$2;

    invoke-direct {v6, p0}, Lcom/dts/dtsxultra/b/j$2;-><init>(Lcom/dts/dtsxultra/b/j;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd_HH-mm-ss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DtsSystemStatusChecker-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v8, v1, Lcom/dts/dtssdk/i;->b:Z

    if-nez v8, :cond_1

    iput-boolean v7, v1, Lcom/dts/dtssdk/i;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    sget-object v0, Lcom/dts/dtssdk/i;->a:Ljava/lang/String;

    const-string v1, "exportSystemStatusToFile(): Path cannot be null or empty. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {v6, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_1
    :goto_1
    move v0, v7

    goto/16 :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/i;->a:Ljava/lang/String;

    const-string v1, "exportSystemStatusToFile(): File name cannot be null or empty. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {v6, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v8, "integrationtest"

    invoke-static {v0, v8}, Lcom/dts/dtssdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "integrationtest/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/dts/dtssdk/i$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ".txt"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v6}, Lcom/dts/dtssdk/i$a;-><init>(Lcom/dts/dtssdk/i;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/i$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const-string v1, "Error in file exporting"

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080018 -> :sswitch_1
        0x7f08001f -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->b(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/j$9;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$9;-><init>(Lcom/dts/dtsxultra/b/j;)V

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

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j;->aL:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.status.UNSUPPORTED_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dts.dtssdk.intent.status.SET_DTS_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dts.dtssdk.intent.status.GET_DTS_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dts.dtssdk.intent.status.DTS_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Z)V

    new-instance v1, Lcom/dts/dtsxultra/b/j$a;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$a;-><init>(Lcom/dts/dtsxultra/b/j;)V

    iput-object v1, p0, Lcom/dts/dtsxultra/b/j;->aK:Lcom/dts/dtsxultra/b/j$a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j;->aK:Lcom/dts/dtsxultra/b/j$a;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/j;->ap:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/j;->S()V

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    new-instance v1, Lcom/dts/dtsxultra/b/j$4;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$4;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-static {v0, v1}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/j;->T()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->am:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/j$16;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$16;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->aD:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/j$17;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/j$17;-><init>(Lcom/dts/dtsxultra/b/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastTest-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dts/dtsxultra/b/j;->aJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dts/dtsxultra/b/j;->aJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dts.dtssdk.intent.action.GET_DTS_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/j;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/j;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aL:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j;->Y:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j;->aK:Lcom/dts/dtsxultra/b/j$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
