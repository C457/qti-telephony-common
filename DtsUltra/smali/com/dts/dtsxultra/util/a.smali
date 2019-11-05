.class public final Lcom/dts/dtsxultra/util/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_0

    const-string v0, "BrandedHeadphoneBluetooth"

    :goto_0
    const-string v1, "BrandedHeadphonePref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_1

    const-string v0, "BrandedHeadphoneLineout"

    goto :goto_0

    :cond_1
    const-string v0, "BrandedHeadphoneUsb"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BrandedHeadphonePref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_0

    const-string v0, "BrandedHeadphoneBluetooth"

    :goto_0
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_1

    const-string v0, "BrandedHeadphoneLineout"

    goto :goto_0

    :cond_1
    const-string v0, "BrandedHeadphoneUsb"

    goto :goto_0
.end method
