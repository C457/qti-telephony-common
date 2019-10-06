.class public interface abstract Lcom/qti/flp/ISessionStatusCallback;
.super Ljava/lang/Object;
.source "ISessionStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/ISessionStatusCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBatchingStatusCb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
