.class public interface abstract Lcom/qti/flp/IMaxPowerAllocatedCallback;
.super Ljava/lang/Object;
.source "IMaxPowerAllocatedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/IMaxPowerAllocatedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMaxPowerAllocatedChanged(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
