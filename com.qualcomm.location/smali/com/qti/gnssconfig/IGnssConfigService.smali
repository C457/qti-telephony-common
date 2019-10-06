.class public interface abstract Lcom/qti/gnssconfig/IGnssConfigService;
.super Ljava/lang/Object;
.source "IGnssConfigService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/gnssconfig/IGnssConfigService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getGnssSvTypeConfig()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/qti/gnssconfig/IGnssConfigCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetGnssSvTypeConfig()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGnssSvTypeConfig([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
