.class public Lcom/dts/dtsxultra/b/n;
.super Lcom/dts/dtsxultra/b/g;


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field private Y:Landroid/support/v4/app/f;

.field private Z:Landroid/widget/RelativeLayout;

.field private aa:Landroid/widget/RelativeLayout;

.field private ac:Landroid/widget/RelativeLayout;

.field private ad:Landroid/widget/RadioButton;

.field private ae:Landroid/widget/RadioButton;

.field private af:Landroid/widget/RadioButton;

.field private ag:Lcom/dts/dtssdk/util/a;

.field private ah:Lcom/dts/dtssdk/a/j;

.field private ai:Landroid/content/BroadcastReceiver;

.field private aj:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/n;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ag:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/n$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/n$1;-><init>(Lcom/dts/dtsxultra/b/n;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ai:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/n$2;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/n$2;-><init>(Lcom/dts/dtsxultra/b/n;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->aj:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/n;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/n;->ah:Lcom/dts/dtssdk/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/n;)Lcom/dts/dtssdk/a/n;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ag:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->ah:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtssdk/f/a;)V

    sget-object v0, Lcom/dts/dtssdk/a/n;->a:Lcom/dts/dtssdk/a/n;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/n;

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/n;->ag:Lcom/dts/dtssdk/util/a;

    return-object p1
.end method

.method private a(Lcom/dts/dtssdk/a/n;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/n;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dts/dtsxultra/b/n$7;->a:[I

    invoke-virtual {p1}, Lcom/dts/dtssdk/a/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ad:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ae:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->af:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ad:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ae:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->af:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ad:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ae:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->af:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/a/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtssdk/a/n;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/n;)Lcom/dts/dtssdk/a/j;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ah:Lcom/dts/dtssdk/a/j;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/a/n;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ag:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->ah:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1, p1}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtssdk/a/n;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    invoke-static {v0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/n;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/n;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e00cf

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080149

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->Z:Landroid/widget/RelativeLayout;

    const v0, 0x7f080147

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->aa:Landroid/widget/RelativeLayout;

    const v0, 0x7f080148

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ac:Landroid/widget/RelativeLayout;

    const v0, 0x7f08014c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ad:Landroid/widget/RadioButton;

    const v0, 0x7f080145

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ae:Landroid/widget/RadioButton;

    const v0, 0x7f08014a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->af:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->Z:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/n$3;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/n$3;-><init>(Lcom/dts/dtsxultra/b/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->aa:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/n$4;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/n$4;-><init>(Lcom/dts/dtsxultra/b/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->ac:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/dts/dtsxultra/b/n$5;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/n$5;-><init>(Lcom/dts/dtsxultra/b/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final r()V
    .locals 4

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->aj:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/n;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/n;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/n;->ag:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/n$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/n$6;-><init>(Lcom/dts/dtsxultra/b/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/n;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
