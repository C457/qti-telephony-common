.class public Lcom/dts/dtsxultra/b/a;
.super Landroid/support/v4/app/e;


# static fields
.field private static final X:Ljava/lang/String;


# instance fields
.field private Y:Landroid/widget/ImageView;

.field private Z:Landroid/widget/TextView;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/a;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dts/dtsxultra/b/a;->ac:I

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/a;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logo tap registered. Current count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dts/dtsxultra/b/a;->ac:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dts/dtsxultra/b/a;->ac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/f;->f(Landroid/content/Context;)Z

    move-result v0

    iget v1, p0, Lcom/dts/dtsxultra/b/a;->ac:I

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Demo mode is enabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "You are 2 steps away from enabling demo mode"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "You are 2 steps away from disabling demo mode"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "You are 1 step away from enabling demo mode"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "You are 1 step away from disabling demo mode"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Demo mode enabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/f;->d(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Demo mode disabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/dts/dtsxultra/util/f;->d(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Demo mode is disabled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->i()V

    const v0, 0x7f0b002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/a;->Y:Landroid/widget/ImageView;

    const v0, 0x7f08000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/a;->aa:Landroid/widget/TextView;

    const v0, 0x7f080009

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/a;->ab:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/a;->ab:Landroid/widget/TextView;

    const v2, 0x7f0e002b

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/b/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/a;->aa:Landroid/widget/TextView;

    const v2, 0x7f0e002c

    invoke-virtual {p0, v2}, Lcom/dts/dtsxultra/b/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/a;->Y:Landroid/widget/ImageView;

    new-instance v2, Lcom/dts/dtsxultra/b/a$1;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/a$1;-><init>(Lcom/dts/dtsxultra/b/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/a;->Z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/a;->Z:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/e;->s()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/a;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0028

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dts/dtsxultra/b/a;->ac:I

    return-void
.end method
