.class public interface abstract Lcom/qti/flp/ITestService;
.super Ljava/lang/Object;
.source "ITestService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/ITestService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteAidingData(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateXtraThrottle(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
