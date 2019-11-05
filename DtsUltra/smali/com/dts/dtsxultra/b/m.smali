.class public Lcom/dts/dtsxultra/b/m;
.super Lcom/dts/dtsxultra/b/g;

# interfaces
.implements Lcom/dts/dtsxultra/views/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/b/m$b;,
        Lcom/dts/dtsxultra/b/m$a;
    }
.end annotation


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field X:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/support/v4/app/f;

.field private aA:Landroid/widget/ImageView;

.field private aB:Landroid/widget/ImageView;

.field private aC:Landroid/widget/ImageView;

.field private aD:Landroid/widget/TextView;

.field private aE:Lcom/dts/dtsxultra/b/m$b;

.field private aF:Landroid/content/BroadcastReceiver;

.field private aG:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/widget/ImageView;

.field private ac:Landroid/widget/ImageView;

.field private ad:Landroid/widget/Switch;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/content/res/ColorStateList;

.field private ai:Landroid/content/res/ColorStateList;

.field private aj:Lcom/dts/dtsxultra/b/m$a;

.field private ak:Landroid/widget/Switch;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/SeekBar;

.field private ap:Landroid/widget/SeekBar;

.field private aq:Landroid/widget/SeekBar;

.field private ar:Landroid/widget/LinearLayout;

.field private as:Lcom/dts/dtssdk/util/a;

.field private at:Lcom/dts/dtssdk/a/j;

.field private au:Landroid/support/v7/widget/RecyclerView$i;

.field private av:Landroid/support/v7/widget/RecyclerView;

.field private aw:Lcom/dts/dtsxultra/views/d;

.field private ax:Z

.field private ay:Ljava/lang/Boolean;

.field private az:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    new-instance v0, Lcom/dts/dtsxultra/b/m$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/m$1;-><init>(Lcom/dts/dtsxultra/b/m;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->X:Lcom/dts/dtssdk/c/c;

    new-instance v0, Lcom/dts/dtsxultra/b/m$12;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/m$12;-><init>(Lcom/dts/dtsxultra/b/m;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->aF:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/m$13;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/m$13;-><init>(Lcom/dts/dtsxultra/b/m;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->aG:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private S()V
    .locals 3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/m$18;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/m$18;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method private T()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v3, "Getting GEQ enabled failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DTS returned error code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/dts/dtsxultra/b/m;->a(ZZ)V

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private U()Z
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v2, "Getting DTS enabled failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/f/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private V()V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v2, "Calling license check API failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling license check API failed with result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    sget-object v2, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v2, "License check failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

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

    :cond_3
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->T()Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->S()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/views/d;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    return-object p1
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

.method private a(Lcom/dts/dtssdk/a/n;)V
    .locals 3

    sget-object v0, Lcom/dts/dtsxultra/b/m$11;->a:[I

    invoke-virtual {p1}, Lcom/dts/dtssdk/a/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ae:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/a/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/a/n;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V
    .locals 5

    const v4, 0x7f0e003d

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->an:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->aq:Landroid/widget/SeekBar;

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

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->am:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ao:Landroid/widget/SeekBar;

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

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->e(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->al:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ap:Landroid/widget/SeekBar;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting dialog level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->an:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting treble level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->am:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting bass level returned error. Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->al:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/m;Z)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a(Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/dts/dtsxultra/b/m;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    const v3, 0x7f050049

    const v2, 0x7f050048

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->V()V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, p2}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v2, "Getting stereo preference failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error for Stereo Preference | "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/n;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtssdk/a/n;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dts/dtsxultra/b/m;->ax:Z

    return p1
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/m;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->T()Z

    move-result v1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/dts/dtsxultra/b/m;->a(ZZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0, v1}, Lcom/dts/dtsxultra/b/m;->a(ZZ)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/dts/dtsxultra/b/h;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Landroid/support/v4/app/e;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V
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

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

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

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/m;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->T()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dts/dtsxultra/b/m;->a(ZZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/dts/dtsxultra/b/n;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/m;->a(Landroid/support/v4/app/e;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/b/m$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aj:Lcom/dts/dtsxultra/b/m$a;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/a/j;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    return-object v0
.end method

.method static synthetic h(Lcom/dts/dtsxultra/b/m;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic i(Lcom/dts/dtsxultra/b/m;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/m;->ax:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtsxultra/b/m$b;

    invoke-direct {v0, p0, v1}, Lcom/dts/dtsxultra/b/m$b;-><init>(Lcom/dts/dtsxultra/b/m;B)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->aE:Lcom/dts/dtsxultra/b/m$b;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aE:Lcom/dts/dtsxultra/b/m$b;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/m$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->al:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->an:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/dts/dtsxultra/b/m;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->am:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/dts/dtsxultra/b/m;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    return-object v0
.end method

.method static synthetic n(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->S()V

    return-void
.end method

.method static synthetic o(Lcom/dts/dtsxultra/b/m;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/d;->c()Lcom/dts/dtssdk/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    const-string v1, "Default content mode null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/d;->c()Lcom/dts/dtssdk/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    invoke-static {}, Lcom/dts/dtsxultra/util/e;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/dts/dtsxultra/b/m$7;

    invoke-direct {v4, p0, v0}, Lcom/dts/dtsxultra/b/m$7;-><init>(Lcom/dts/dtsxultra/b/m;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v2, v3, v4}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->i()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/m;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset audio level settings failed: "

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

    :cond_1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/e;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/m$8;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/m$8;-><init>(Lcom/dts/dtsxultra/b/m;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/e;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/m$9;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/m$9;-><init>(Lcom/dts/dtsxultra/b/m;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_2
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    sget-object v3, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/util/e;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/dts/dtsxultra/b/m$10;

    invoke-direct {v5, p0, v6}, Lcom/dts/dtsxultra/b/m$10;-><init>(Lcom/dts/dtsxultra/b/m;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v0 .. v5}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V

    :try_start_3
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method static synthetic p(Lcom/dts/dtsxultra/b/m;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ar:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e003a

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f08004f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->av:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->e()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    :goto_0
    new-instance v0, Lcom/dts/dtsxultra/views/d;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-direct {v0, v1}, Lcom/dts/dtsxultra/views/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    iput-object p0, v0, Lcom/dts/dtsxultra/views/d;->g:Lcom/dts/dtsxultra/views/d$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->av:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->av:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->av:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    const v0, 0x7f080178

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

    const v0, 0x7f0800bc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0800c0

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f08017a

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0800b1

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aa:Landroid/widget/ImageView;

    const v3, 0x7f0800c5

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    const v3, 0x7f0800b2

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    const v3, 0x7f0800c6

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ae:Landroid/widget/TextView;

    const v3, 0x7f0800b3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->af:Landroid/widget/TextView;

    const v3, 0x7f0800c7

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ag:Landroid/widget/TextView;

    const v3, 0x7f080155

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ar:Landroid/widget/LinearLayout;

    const v3, 0x7f0800e8

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->az:Landroid/widget/ImageView;

    const v3, 0x7f0800e0

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aA:Landroid/widget/ImageView;

    const v3, 0x7f0800dc

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aB:Landroid/widget/ImageView;

    const v3, 0x7f08012d

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aC:Landroid/widget/ImageView;

    const v3, 0x7f080179

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aD:Landroid/widget/TextView;

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->p()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f080031

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f08002d

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->al:Landroid/widget/TextView;

    const v3, 0x7f08002c

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ap:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->ap:Landroid/widget/SeekBar;

    new-instance v5, Lcom/dts/dtsxultra/b/m$3;

    invoke-direct {v5, p0}, Lcom/dts/dtsxultra/b/m$3;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_2
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->q()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f08002f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->an:Landroid/widget/TextView;

    const v3, 0x7f08002e

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aq:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->aq:Landroid/widget/SeekBar;

    new-instance v5, Lcom/dts/dtsxultra/b/m$4;

    invoke-direct {v5, p0}, Lcom/dts/dtsxultra/b/m$4;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_3
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f080036

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->am:Landroid/widget/TextView;

    const v3, 0x7f080035

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->ao:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/dts/dtsxultra/b/m;->ao:Landroid/widget/SeekBar;

    new-instance v5, Lcom/dts/dtsxultra/b/m$5;

    invoke-direct {v5, p0}, Lcom/dts/dtsxultra/b/m$5;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_4
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/dts/dtsxultra/b/m$14;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/m$14;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/dts/dtsxultra/b/m$15;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/m$15;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-object v4

    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcom/dts/dtsxultra/b/m$a;

    invoke-direct {v3}, Lcom/dts/dtsxultra/b/m$a;-><init>()V

    iput-object v3, p0, Lcom/dts/dtsxultra/b/m;->aj:Lcom/dts/dtsxultra/b/m$a;

    goto/16 :goto_1

    :cond_3
    const v3, 0x7f080030

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    const v3, 0x7f080032

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const v3, 0x7f080033

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/content/Context;)V

    check-cast p1, Landroid/support/v4/app/f;

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Lcom/dts/dtssdk/a/j;)V
    .locals 2

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m;->at:Lcom/dts/dtssdk/a/j;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    new-instance v1, Lcom/dts/dtsxultra/b/m$6;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtsxultra/b/m$6;-><init>(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/a/j;)V

    invoke-static {v0, p1, v1}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->e()Landroid/support/v4/app/f;

    move-result-object v1

    const v2, 0x7f0f00c7

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0050

    new-instance v3, Lcom/dts/dtsxultra/b/m$2;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/m$2;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00d9

    new-instance v3, Lcom/dts/dtsxultra/b/m$19;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/m$19;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->U()Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f080020
        :pswitch_0
    .end packed-switch
.end method

.method final c(Z)V
    .locals 4

    const v3, 0x7f050049

    const v2, 0x7f050048

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ao:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ap:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aq:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    iput-boolean p1, v0, Lcom/dts/dtsxultra/views/d;->f:Z

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->az:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aA:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->az:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aB:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aA:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aa:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->ai:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->av:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->au:Landroid/support/v7/widget/RecyclerView$i;

    goto :goto_0
.end method

.method public final r()V
    .locals 4

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->aG:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m;->aF:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aw:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/dts/dtsxultra/views/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->X:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->as:Lcom/dts/dtssdk/util/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ad:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/m$16;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/m$16;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->ak:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/m$17;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/m$17;-><init>(Lcom/dts/dtsxultra/b/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/m;->V()V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/m;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->aF:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->Z:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m;->aG:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m;->ay:Ljava/lang/Boolean;

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->v()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aE:Lcom/dts/dtsxultra/b/m$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m;->aE:Lcom/dts/dtsxultra/b/m$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/m$b;->cancel(Z)Z

    :cond_0
    return-void
.end method
