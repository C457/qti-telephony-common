.class public Lcom/dts/dtsxultra/b/l;
.super Lcom/dts/dtsxultra/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/b/l$a;
    }
.end annotation


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field X:Landroid/content/BroadcastReceiver;

.field private Z:Landroid/widget/RelativeLayout;

.field private aA:Landroid/widget/TextView;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/widget/TextView;

.field private aD:Landroid/widget/TextView;

.field private aE:Landroid/widget/ImageView;

.field private aF:Landroid/content/res/ColorStateList;

.field private aG:Landroid/content/res/ColorStateList;

.field private aH:Z

.field private aI:Lcom/dts/dtsxultra/b/l$a;

.field private aJ:Z

.field private aK:Lcom/dts/dtssdk/util/a;

.field private aL:Landroid/content/BroadcastReceiver;

.field private aM:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/widget/LinearLayout;

.field private ab:Landroid/widget/ImageView;

.field private ae:Landroid/widget/ImageView;

.field private af:Landroid/widget/ImageView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/widget/ImageView;

.field private aj:Landroid/widget/ImageView;

.field private ak:Landroid/widget/Switch;

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

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/TextView;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aH:Z

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->aK:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/l$2;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/l$2;-><init>(Lcom/dts/dtsxultra/b/l;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->X:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/l$7;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/l$7;-><init>(Lcom/dts/dtsxultra/b/l;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->aL:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dts/dtsxultra/b/l$8;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/l$8;-><init>(Lcom/dts/dtsxultra/b/l;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/l;->aM:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

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

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

    const-string v2, "Getting DTS enabled failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

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

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private T()V
    .locals 7

    const v6, 0x7f0e0082

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/dts/dtssdk/i;->a()Lcom/dts/dtssdk/i;

    invoke-static {}, Lcom/dts/dtssdk/i;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

    const-string v2, "Calling license check API failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->am:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aH:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

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

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

    const-string v2, "License check failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->am:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iput-boolean v4, p0, Lcom/dts/dtsxultra/b/l;->aH:Z

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/util/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/l$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/l$6;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/ImageView;

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtssdk/util/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ax:Landroid/widget/TextView;

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

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ax:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private V()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/l;->aJ:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const v2, 0x7f0e0050

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
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
    sget-object v0, Lcom/dts/dtsxultra/b/l;->Y:Ljava/lang/String;

    const-string v1, "updateHeadphoneSelection() does not support UNKNOWN or INTERNAL_SPEAKERS audio route. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ao:Landroid/widget/TextView;

    :goto_1
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    new-instance v3, Lcom/dts/dtsxultra/b/l$5;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/l$5;-><init>(Lcom/dts/dtsxultra/b/l;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ap:Landroid/widget/TextView;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aq:Landroid/widget/TextView;

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
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0, p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/l;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->V()Z

    move-result v0

    return v0
.end method

.method private b(Lcom/dts/dtssdk/util/a;)V
    .locals 5

    const v4, 0x7f0e0043

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioRouteChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l;->aK:Lcom/dts/dtssdk/util/a;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    sget-object v1, Lcom/dts/dtsxultra/b/l$9;->a:[I

    invoke-virtual {p1}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->d(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

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
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

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
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

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
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v3}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

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

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->d(Z)V

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

    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

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
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/l;->d(Z)V

    return-void
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/l;)V
    .locals 4

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->d(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dts/dtsxultra/b/m;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/m;-><init>()V

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/l;->a(Landroid/support/v4/app/e;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/l;)Lcom/dts/dtsxultra/b/l$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aI:Lcom/dts/dtsxultra/b/l$a;

    return-object v0
.end method

.method private d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aF:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050048

    invoke-static {v0, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ae:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aE:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->as:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->at:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aw:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->av:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aG:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050049

    invoke-static {v0, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aH:Z

    return v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aJ:Z

    return v0
.end method

.method static synthetic h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic i(Lcom/dts/dtsxultra/b/l;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->T()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->i()V

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const v2, 0x7f0b0037

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05008d

    invoke-static {v2, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->aF:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050049

    invoke-static {v2, v3}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dts/dtsxultra/b/l;->aG:Landroid/content/res/ColorStateList;

    const v2, 0x7f0800cc

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0800ce

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0800c9

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0800d3

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f0800ca

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f0800d0

    invoke-virtual {v12, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v8, 0x7f0800d2

    invoke-virtual {v12, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v9, 0x7f0800cf

    invoke-virtual {v12, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v10, 0x7f0800cb

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    const v10, 0x7f0800e3

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/dts/dtsxultra/b/l;->aa:Landroid/widget/LinearLayout;

    const v10, 0x7f0800de

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v10, 0x7f0800dd

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0800b6

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const v11, 0x7f0800ad

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    const v11, 0x7f0800c2

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ae:Landroid/widget/ImageView;

    const v11, 0x7f0800b0

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/ImageView;

    const v11, 0x7f0800e0

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/ImageView;

    const v11, 0x7f0800da

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->af:Landroid/widget/ImageView;

    const v11, 0x7f0800b8

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ag:Landroid/widget/ImageView;

    const v11, 0x7f0800b3

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/ImageView;

    const v11, 0x7f0800bd

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    const v11, 0x7f0800e5

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->al:Landroid/widget/TextView;

    const v11, 0x7f0800e4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->am:Landroid/widget/TextView;

    const v11, 0x7f0800ae

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->an:Landroid/widget/TextView;

    const v11, 0x7f0800c3

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ao:Landroid/widget/TextView;

    const v11, 0x7f0800b1

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ap:Landroid/widget/TextView;

    const v11, 0x7f0800e1

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aq:Landroid/widget/TextView;

    const v11, 0x7f0800b4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ar:Landroid/widget/TextView;

    const v11, 0x7f0800df

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aC:Landroid/widget/TextView;

    const v11, 0x7f0800d6

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aD:Landroid/widget/TextView;

    const v11, 0x7f0800c4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->as:Landroid/widget/TextView;

    const v11, 0x7f0800b2

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->at:Landroid/widget/TextView;

    const v11, 0x7f0800e2

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    const v11, 0x7f0800b5

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->av:Landroid/widget/TextView;

    const v11, 0x7f0800d5

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aw:Landroid/widget/TextView;

    const v11, 0x7f0800d4

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aE:Landroid/widget/ImageView;

    const v11, 0x7f0800db

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ax:Landroid/widget/TextView;

    const v11, 0x7f0800dc

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->ay:Landroid/widget/TextView;

    const v11, 0x7f0800ba

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->az:Landroid/widget/TextView;

    const v11, 0x7f0800be

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aA:Landroid/widget/TextView;

    const v11, 0x7f0800af

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/dts/dtsxultra/b/l;->aB:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/dts/dtsxultra/b/l;->f()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    const v14, 0x3fa66666    # 1.3f

    invoke-static {v11, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    const/16 v14, 0x1e

    const/4 v15, -0x5

    const/16 v16, 0x10

    const/16 v17, 0x1a

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    :cond_0
    new-instance v11, Lcom/dts/dtsxultra/b/l$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/dts/dtsxultra/b/l$1;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/dts/dtsxultra/b/l$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$10;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/dts/dtsxultra/b/l$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$11;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/dts/dtsxultra/b/l$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$12;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->f()Z

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

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/dts/dtsxultra/b/l$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$15;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->n()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->m()Z

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
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/dts/dtsxultra/b/l$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/dts/dtsxultra/b/l$16;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->n()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dts/dtsxultra/b/l;->Z:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/dts/dtsxultra/b/l$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/dts/dtsxultra/b/l$17;-><init>(Lcom/dts/dtsxultra/b/l;)V

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

.method public final a(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/app/Activity;)V

    check-cast p1, Lcom/dts/dtsxultra/b/l$a;

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l;->aI:Lcom/dts/dtsxultra/b/l$a;

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->k()Z

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

    :cond_0
    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->V()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .packed-switch 0x7f080022
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 4

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aJ:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aM:Landroid/content/BroadcastReceiver;

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

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dts/dtssdk/g;->c(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aL:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MainFragment"

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "dts.dtssdk.intent.action.RECOGNIZED_USB_ACCESSORY_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/f;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0104

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    new-instance v1, Lcom/dts/dtsxultra/b/l$4;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/l$4;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/l;->T()V

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/l;->aJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aG:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050049

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ae:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ah:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ai:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aj:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aE:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->af:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ag:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->ab:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aC:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l;->aD:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->as:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->at:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aw:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->av:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->aB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ak:Landroid/widget/Switch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final t()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->t()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final u()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->u()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/l;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aL:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l;->aM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/c;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
