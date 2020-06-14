.class public Lcom/android/nfc/dhimpl/NativeT4tNfceeManager;
.super Ljava/lang/Object;
.source "NativeT4tNfceeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native doReadT4tData([B)[B
.end method

.method public native doWriteT4tData([B[BI)I
.end method
