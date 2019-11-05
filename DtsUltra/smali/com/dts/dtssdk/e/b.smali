.class public final Lcom/dts/dtssdk/e/b;
.super Lcom/dts/dtssdk/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "dither_16b_2c_48k_1s.s16be"

    invoke-direct {p0, p1, v0}, Lcom/dts/dtssdk/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "4_2000Hz.aac"

    invoke-virtual {p0, v0}, Lcom/dts/dtssdk/e/b;->a(Ljava/lang/String;)V

    const-string v0, "5_4000Hz.aac"

    invoke-virtual {p0, v0}, Lcom/dts/dtssdk/e/b;->a(Ljava/lang/String;)V

    const-string v0, "6_8000Hz.aac"

    invoke-virtual {p0, v0}, Lcom/dts/dtssdk/e/b;->a(Ljava/lang/String;)V

    const-string v0, "7_12000Hz.aac"

    invoke-virtual {p0, v0}, Lcom/dts/dtssdk/e/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtssdk/e/a;->a()V

    return-void
.end method

.method public final bridge synthetic a(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dts/dtssdk/e/a;->a(F)V

    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    invoke-super {p0}, Lcom/dts/dtssdk/e/a;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Lcom/dts/dtssdk/e/a;->c()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtssdk/e/a;->close()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtssdk/e/a;->d()V

    return-void
.end method
