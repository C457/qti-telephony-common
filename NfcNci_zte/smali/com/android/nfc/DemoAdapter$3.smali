.class Lcom/android/nfc/DemoAdapter$3;
.super Ljava/lang/Object;
.source "DemoAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/DemoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/DemoAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/nfc/DemoAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/DemoAdapter;

    .line 183
    iput-object p1, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    iput p2, p0, Lcom/android/nfc/DemoAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 186
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v0}, Lcom/android/nfc/DemoAdapter;->access$300(Lcom/android/nfc/DemoAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/DemoAdapter$3;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DemoBean;

    .line 187
    .local v0, "bean":Lcom/android/nfc/DemoBean;
    const-string v1, "DemoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/nfc/DemoBean;->getFullServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is checked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v1, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/android/nfc/DemoBean;->getFullServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v2}, Lcom/android/nfc/DemoAdapter;->access$400(Lcom/android/nfc/DemoAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nxp/nfc/NxpNfcAdapter;->updateServiceState(Ljava/util/Map;)I

    .line 192
    if-nez p2, :cond_0

    .line 193
    const-string v2, "DemoAdapter"

    const-string v3, "baojian cbcheck unchecked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v2}, Lcom/android/nfc/DemoAdapter;->access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getCardEmulationManager()Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v3}, Lcom/android/nfc/DemoAdapter;->access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v4}, Lcom/android/nfc/DemoAdapter;->access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->getLastPerferredService()Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "payment"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DemoAdapter"

    const-string v4, "updateServiceState error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcom/android/nfc/DemoAdapter$3$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/DemoAdapter$3$1;-><init>(Lcom/android/nfc/DemoAdapter$3;)V

    .line 206
    invoke-virtual {v2}, Lcom/android/nfc/DemoAdapter$3$1;->start()V

    .line 207
    return-void
.end method
