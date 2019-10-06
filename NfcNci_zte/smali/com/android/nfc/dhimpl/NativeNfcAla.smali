.class public Lcom/android/nfc/dhimpl/NativeNfcAla;
.super Ljava/lang/Object;
.source "NativeNfcAla.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native GetAppletsList([Ljava/lang/String;)I
.end method

.method public native GetCertificateKey()[B
.end method

.method public native doAppletLoadApplet(Ljava/lang/String;[B)I
.end method

.method public native doGetLSConfigVersion()I
.end method

.method public native doLsExecuteScript(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method public native doLsGetAppletStatus()[B
.end method

.method public native doLsGetStatus()[B
.end method

.method public native doLsGetVersion()[B
.end method
