.class public Lcom/dts/dtsxultra/b/l;
.super Lcom/dts/dtsxultra/b/g;


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field private Y:Landroid/support/v4/app/f;

.field private Z:Landroid/widget/RelativeLayout;

.field private aA:Landroid/content/BroadcastReceiver;

.field private aB:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/widget/LinearLayout;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/ImageView;

.field private ae:Landroid/widget/ImageView;

.field private af:Landroid/widget/ImageView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/Switch;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/TextView;

.field private as:Landroid/widget/TextView;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/widget/ImageView;

.field private aw:Landroid/content/res/ColorStateList;

.field private ax:Landroid/content/res/ColorStateList;

.field private ay:Z

.field private az:Lcom/dts/dtssdk/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->ay:Z

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->az:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/l$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/l$1;-><init>(Lcom/dts/dtsxultra/b/l;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->aA:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/l$8;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/l$8;-><init>(Lcom/dts/dtsxultra/b/l;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->aB:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    return-object v0
.end method

.method private S()Z
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    const-string v2, "Getting DTS enabled failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/f/a;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/e;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()I

    return-void
.end method

.method private a(Lcom/dts/dtssdk/util/a;)V
    .locals 4

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    const-string v1, "updateHeadphoneSelection() does not support UNKNOWN or INTERNAL_SPEAKERS audio route. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->al:Landroid/widget/TextView;

    :goto_1
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    new-instance v3, Lcom/dts/dtsxultra/b/l$5;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/l$5;-><init>(Lcom/dts/dtsxultra/b/l;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->am:Landroid/widget/TextView;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    goto :goto_1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/l;Landroid/support/v4/app/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->a(Landroid/support/v4/app/e;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/l;Lcom/dts/dtssdk/util/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtssdk/util/a;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/l;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->c(Z)V

    return-void
.end method

.method private b(Lcom/dts/dtssdk/util/a;)V
    .locals 5

    const v4, 0x7f0e0043

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioRouteChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l;->az:Lcom/dts/dtssdk/util/a;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    sget-object v1, Lcom/dts/dtsxultra/b/l$7;->a:[I

    invoke-virtual {p1}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->c(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/widget/ImageView;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/widget/ImageView;

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/widget/ImageView;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/widget/ImageView;

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/l;)V
    .locals 4

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->c(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dts/dtsxultra/b/e;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/e;-><init>()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Landroid/support/v4/app/e;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/l;Landroid/support/v4/app/e;)V
    .locals 3

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->a(Landroid/support/v4/app/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/l;Lcom/dts/dtssdk/util/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/l;Z)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-static {v0, p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/l;)V
    .locals 4

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->c(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dts/dtsxultra/b/m;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/m;-><init>()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Landroid/support/v4/app/e;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aw:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ad:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ae:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->af:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ag:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->av:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ap:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aq:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->at:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->as:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ax:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->ay:Z

    return v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ao:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->i()V

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const v2, 0x7f0b0036

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->aw:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->ax:Landroid/content/res/ColorStateList;

    const v2, 0x7f0800bb

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0800bd

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0800b8

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0800c2

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f0800b9

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f0800bf

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v8, 0x7f0800c1

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v9, 0x7f0800be

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v10, 0x7f0800ba

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    const v10, 0x7f0800ce

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    const v10, 0x7f0800ca

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0800ac

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v11, 0x7f0800a3

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/widget/ImageView;

    const v11, 0x7f0800b4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ad:Landroid/widget/ImageView;

    const v11, 0x7f0800a6

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ae:Landroid/widget/ImageView;

    const v11, 0x7f0800cb

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->af:Landroid/widget/ImageView;

    const v11, 0x7f0800a9

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ag:Landroid/widget/ImageView;

    const v11, 0x7f0800af

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    const v11, 0x7f0800d0

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/TextView;

    const v11, 0x7f0800cf

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/TextView;

    const v11, 0x7f0800a4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/TextView;

    const v11, 0x7f0800b5

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->al:Landroid/widget/TextView;

    const v11, 0x7f0800a7

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->am:Landroid/widget/TextView;

    const v11, 0x7f0800cc

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    const v11, 0x7f0800aa

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ao:Landroid/widget/TextView;

    const v11, 0x7f0800b6

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ap:Landroid/widget/TextView;

    const v11, 0x7f0800a8

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aq:Landroid/widget/TextView;

    const v11, 0x7f0800cd

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ar:Landroid/widget/TextView;

    const v11, 0x7f0800ab

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->as:Landroid/widget/TextView;

    const v11, 0x7f0800c4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->at:Landroid/widget/TextView;

    const v11, 0x7f0800c3

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->av:Landroid/widget/ImageView;

    const v11, 0x7f0800c8

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    new-instance v11, Lcom/dts/dtsxultra/b/l$9;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/dts/dtsxultra/b/l$9;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const v11, 0x3fa66666    # 1.3f

    invoke-static {v2, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    const/16 v11, 0x1e

    const/4 v14, -0x5

    const/16 v15, 0x10

    const/16 v16, 0x1a

    move/from16 v0, v16

    invoke-virtual {v2, v11, v14, v15, v0}, Landroid/widget/Switch;->setPadding(IIII)V

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/dts/dtsxultra/b/l$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$10;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/dts/dtsxultra/b/l$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$11;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/dts/dtsxultra/b/l$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$12;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/dts/dtsxultra/b/l$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$13;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    new-instance v2, Lcom/dts/dtsxultra/b/l$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$14;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/dts/dtsxultra/b/l$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$15;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->n()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->m()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    return-object v12

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/dts/dtsxultra/b/l$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$2;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/dts/dtsxultra/b/l$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/dts/dtsxultra/b/l$3;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
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
    iget-object v0, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/b/o;

    invoke-direct {v1}, Lcom/dts/dtsxultra/b/o;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()I

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080021
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 4

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aB:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dts.dtssdk.intent.status.DTS_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 7

    const v6, 0x7f0e0081

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0101

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/l$4;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/l$4;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    const-string v2, "Calling license check API failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/f/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->ay:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling license check API failed with result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    const-string v2, "License check failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->X:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iput-boolean v4, p0, Lcom/dts/dtsxultra/b/l;->ay:Z

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/l$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/l$6;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ag:Landroid/widget/ImageView;

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtssdk/util/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aA:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Y:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aB:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
