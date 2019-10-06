.class Lcom/qualcomm/location/osagent/OsAgent$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/osagent/OsAgent;->handleSubscribe(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 355
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$1;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$1;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$000(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 359
    return-void
.end method
