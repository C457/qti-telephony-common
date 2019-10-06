.class public interface abstract Lcom/qti/debugreport/IDebugReportCallback;
.super Ljava/lang/Object;
.source "IDebugReportCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IDebugReportCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDebugDataAvailable(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
