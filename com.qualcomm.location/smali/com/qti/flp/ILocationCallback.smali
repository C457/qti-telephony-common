.class public interface abstract Lcom/qti/flp/ILocationCallback;
.super Ljava/lang/Object;
.source "ILocationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/ILocationCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLocationAvailable([Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
